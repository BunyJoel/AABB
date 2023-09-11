<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="课程名称" prop="couName">
        <el-input
          v-model="queryParams.couName"
          placeholder="请输入课程名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="授课老师" prop="teaName">
       <el-input
          v-model="queryParams.teaName"
          placeholder="请输入授课老师"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="考核方式" prop="couWay">
        <el-select v-model="queryParams.couWay" placeholder="请选择考核方式" clearable>
          <el-option
            v-for="dict in dict.type.sys_exam_way"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
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
          v-hasPermi="['student:course:add']"
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
          v-hasPermi="['student:course:edit']"
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
          v-hasPermi="['student:course:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['student:course:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="courseList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="课程id" align="center" prop="couId" />
      <el-table-column label="课程名称" align="center" prop="couName" />
      <el-table-column label="授课老师" align="center" prop="teaName" />
      <el-table-column label="学分" align="center" prop="couCredit" />
      <el-table-column label="学时" align="center" prop="couHour" />
      <el-table-column label="考核方式" align="center" prop="couWay">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_exam_way" :value="scope.row.couWay"/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['student:course:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['student:course:remove']"
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

    <!-- 添加或修改课程管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="课程名称" prop="couName">
          <el-input v-model="form.couName" placeholder="请输入课程名称" />
        </el-form-item>
        <el-form-item label="授课老师" prop="teaId">
          <!-- <el-input v-model="form.teaName" placeholder="请输入授课老师" /> -->
          <el-select v-model="form.teaId" placeholder="请选择授课老师" clearable filterable @blur="selectBlur" @clear="selectClear">
            <el-option
            v-for="item in teacherList"
            :key="item.teaId"
            :label="item.teaName"
            :value="item.teaId"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="学分" prop="couCredit">
          <el-input v-model="form.couCredit" placeholder="请输入学分" />
        </el-form-item>
        <el-form-item label="学时" prop="couHour">
          <el-input v-model="form.couHour" placeholder="请输入学时" />
        </el-form-item>
        <el-form-item label="考核方式" prop="couWay">
          <el-select v-model="form.couWay" placeholder="请选择考核方式">
            <el-option
              v-for="dict in dict.type.sys_exam_way"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
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
import { listCourse, getCourse, delCourse, addCourse, updateCourse } from "@/api/student/course";
//导入类型接口，查询所有老师的方法
import { listAllTeacher } from "@/api/student/teacher";

export default {
  name: "Course",
  dicts: ['sys_exam_way'],
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
      // 课程管理表格数据
      courseList: [],
      //学院列表数据
      teacherList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        couName: null,
        teaId:null,
        teaName: null,
        couWay: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        couName: [
          { required: true, message: "课程名称不能为空", trigger: "blur" }
        ],
        teaName: [
          { required: true, message: "教师id不能为空", trigger: "blur" }
        ],
        couCredit: [
          { required: true, message: "学分不能为空", trigger: "blur" }
        ],
        couHour: [
          { required: true, message: "学时不能为空", trigger: "blur" }
        ],
        couWay: [
          { required: true, message: "考核方式不能为空", trigger: "change" }
        ]
      }
    };
  },
  created() {
    this.getList();
    this.getAllTeacher();
  },
  methods: {
        getAllTeacher(){
            listAllTeacher().then(response =>{
              this.teacherList = response;
            })
          },
    /** 查询课程管理列表 */
    getList() {
      this.loading = true;
      listCourse(this.queryParams).then(response => {
        this.courseList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    selectBlur(e) {
          this.teaId = e.target.value;
          this.$forceUpdate(); // 强制更新
        },
        selectClear() {
          this.teaId = "";
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
        couId: null,
        couName: null,
        teaId: null,
        teaName: null,
        couCredit: null,
        couHour: null,
        couWay: null
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
      this.ids = selection.map(item => item.couId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加课程管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const couId = row.couId || this.ids
      getCourse(couId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改课程管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.couId != null) {
            updateCourse(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addCourse(this.form).then(response => {
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
      const couIds = row.couId || this.ids;
      this.$modal.confirm('是否确认删除课程管理编号为"' + couIds + '"的数据项？').then(function() {
        return delCourse(couIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('student/course/export', {
        ...this.queryParams
      }, `course_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
