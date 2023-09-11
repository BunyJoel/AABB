<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="学号" prop="stuNumber">
        <el-input
          v-model="queryParams.stuNumber"
          placeholder="请输入学号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="学生姓名" prop="stuName">
        <el-input
          v-model="queryParams.stuName"
          placeholder="请输入学生姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="班级" prop="clsId">
<!--        <el-input
          v-model="queryParams.clsName"
          placeholder="请输入班级id"
          clearable
          @keyup.enter.native="handleQuery"
        /> -->
        <el-select v-model="queryParams.clsId" placeholder="请选择所在班级" clearable filterable @blur="selectBlur" @clear="selectClear">
          <el-option
          v-for="item in classList"
          :key="item.clsId"
          :label="item.clsName"
          :value="item.clsId"></el-option>
          </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['student:student:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['student:student:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['student:student:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['student:student:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="studentList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="学号" align="center" prop="stuNumber" />
      <el-table-column label="学生姓名" align="center" prop="stuName" />
      <el-table-column label="班级" align="center" prop="clsName" />
      <el-table-column label="性别" align="center" prop="stuGender">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_user_sex" :value="scope.row.stuGender"/>
        </template>
      </el-table-column>
      <el-table-column label="电话" align="center" prop="stuPhone" />
      <el-table-column label="平均绩点" align="center" prop="stuAvg" />
      <el-table-column label="生源地" align="center" prop="stuAddress" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['student:student:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['student:student:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改学生管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="学生姓名" prop="stuName">
          <el-input v-model="form.stuName" placeholder="请输入学生姓名" />
        </el-form-item>
        <el-form-item label="班级" prop="clsId">
          <!-- <el-input v-model="form.clsName" placeholder="请输入班级id" /> -->
          <el-select v-model="form.clsId" placeholder="请选择所在班级" clearable filterable @blur="selectBlur" @clear="selectClear">
            <el-option
            v-for="item in classList"
            :key="item.clsId"
            :label="item.clsName"
            :value="item.clsId"></el-option>
            </el-select>
        </el-form-item>
        <el-form-item label="性别" prop="stuGender">
          <el-select v-model="form.stuGender" placeholder="请选择性别">
            <el-option
              v-for="dict in dict.type.sys_user_sex"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="电话" prop="stuPhone">
          <el-input v-model="form.stuPhone" placeholder="请输入电话" />
        </el-form-item>
        <el-form-item label="生源地" prop="stuAddress">
          <el-input v-model="form.stuAddress" placeholder="请输入生源地" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listStudent, getStudent, delStudent, addStudent, updateStudent } from "@/api/student/student";
import { listAllClass } from "@/api/student/class";

export default {
  name: "Student",
  dicts: ['sys_user_sex'],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 学生管理表格数据
      studentList: [],
      // 班级列表
      classList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        stuNumber: null,
        stuName: null,
        clsName: null,
        clsId: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        stuNumber: [
          { required: true, message: "学号不能为空", trigger: "blur" }
        ],
        stuName: [
          { required: true, message: "学生姓名不能为空", trigger: "blur" }
        ],
        clsName: [
          { required: true, message: "班级不能为空", trigger: "blur" }
        ],
        stuGender: [
          { required: true, message: "性别不能为空", trigger: "change" }
        ],
        stuPhone: [
          { required: true, message: "电话不能为空", trigger: "blur" }
        ],
        stuAddress: [
          { required: true, message: "生源地不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
    this.getAllClass();
  },
  methods: {
    /** 查询学生管理列表 */
    getList() {
      this.loading = true;
      listStudent(this.queryParams).then(response => {
        this.studentList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    getAllClass(){
      listAllClass().then(response =>{
        this.classList = response;
      })
    },
    selectBlur(e) {
          this.collId = e.target.value;
          this.$forceUpdate(); // 强制更新
        },
        selectClear() {
          this.collId = "";
          this.$forceUpdate(); // 强制更新
        },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        stuNumber: null,
        stuName: null,
        clsName: null,
        stuGender: null,
        stuPhone: null,
        stuAvg: null,
        stuAddress: null,
        clsId: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.stuNumber)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加学生管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const stuNumber = row.stuNumber || this.ids
      getStudent(stuNumber).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改学生管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.stuNumber != null) {
            updateStudent(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addStudent(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const stuNumbers = row.stuNumber || this.ids;
      this.$modal.confirm('是否确认删除学生管理编号为"' + stuNumbers + '"的数据项？').then(function() {
        return delStudent(stuNumbers);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('student/student/export', {
        ...this.queryParams
      }, `student_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
