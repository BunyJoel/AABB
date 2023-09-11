<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="课程" prop="couId">
<!--        <el-input
          v-model="queryParams.couId"
          placeholder="请输入课程id"
          clearable
          @keyup.enter.native="handleQuery"
        /> -->
        <el-select v-model="queryParams.couId" placeholder="请选择课程" clearable filterable @blur="selectBlur" @clear="selectClear">
          <el-option
          v-for="item in courseList"
          :key="item.couId"
          :label="item.couName"
          :value="item.couId"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="开设专业" prop="majId">
     <!--   <el-input
          v-model="queryParams.majId"
          placeholder="请输入班级id"
          clearable
          @keyup.enter.native="handleQuery"
        /> -->
        <el-select v-model="queryParams.majId" placeholder="请选择开设专业" clearable filterable @blur="selectBlur" @clear="selectClear">
          <el-option
          v-for="item in majorList"
          :key="item.majId"
          :label="item.majName"
          :value="item.majId"></el-option>
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
          v-hasPermi="['student:set:add']"
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
          v-hasPermi="['student:set:edit']"
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
          v-hasPermi="['student:set:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['student:set:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="setList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="编号" align="center" prop="setId" />
      <el-table-column label="课程名称" align="center" prop="couName" />
      <el-table-column label="开设专业" align="center" prop="majName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['student:set:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['student:set:remove']"
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

    <!-- 添加或修改开发管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="课程" prop="couId">
          <!-- <el-input v-model="form.couId" placeholder="请输入课程id" /> -->
          <el-select v-model="form.couId" placeholder="请选择课程" clearable filterable @blur="selectBlur" @clear="selectClear">
            <el-option
            v-for="item in courseList"
            :key="item.couId"
            :label="item.couName"
            :value="item.couId"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="开设专业" prop="majId">
         <!-- <el-input v-model="form.majId" placeholder="请输入班级id" /> -->
         <el-select v-model="form.majId" placeholder="请选择开设专业" clearable filterable @blur="selectBlur" @clear="selectClear">
           <el-option
           v-for="item in majorList"
           :key="item.majId"
           :label="item.majName"
           :value="item.majId"></el-option>
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
import { listSet, getSet, delSet, addSet, updateSet } from "@/api/student/set";
//导入类型接口，查询所有专业的方法
import { listAllMajor } from "@/api/student/major";
//导入类型接口，查询所有课程的方法
import { listAllCourse } from "@/api/student/course";

export default {
  name: "Set",
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
      // 开发管理表格数据
      setList: [],
      //课程列
      courseList: [],
      //专业列
      majorList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        couId: null,
        majId: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        couId: [
          { required: true, message: "课程id不能为空", trigger: "blur" }
        ],
        majId: [
          { required: true, message: "班级id不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
    this.getAllCourse();
    this.getAllMajor();
  },
  methods: {
    getAllCourse(){
      listAllCourse().then(response =>{
        this.courseList = response;
      })
    },
    getAllMajor(){
      listAllMajor().then(response =>{
        this.majorList = response;
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
    /** 查询开发管理列表 */
    getList() {
      this.loading = true;
      listSet(this.queryParams).then(response => {
        this.setList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        setId: null,
        couId: null,
        majId: null
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
      this.ids = selection.map(item => item.setId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加开发管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const setId = row.setId || this.ids
      getSet(setId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改开发管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.setId != null) {
            updateSet(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addSet(this.form).then(response => {
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
      const setIds = row.setId || this.ids;
      this.$modal.confirm('是否确认删除开发管理编号为"' + setIds + '"的数据项？').then(function() {
        return delSet(setIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('student/set/export', {
        ...this.queryParams
      }, `set_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
