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
          @keyup.enter.native="Query"
        />
      </el-form-item>
      <el-form-item label="课程" prop="couId">
<!--        <el-input
          v-model="queryParams.couId"
          placeholder="请输入课程编号"
          clearable
          @keyup.enter.native="handleQuery"
        /> -->
        <el-select v-model="queryParams.couId" placeholder="请选择课程" @change="handleQuery" clearable filterable @blur="selectBlur" @clear="selectClear">
          <el-option
          v-for="item in courseList"
          :key="item.couId"
          :label="item.couName"
          :value="item.couId"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="授课老师" prop="teaId">
<!--        <el-input
          v-model="queryParams.teaId"
          placeholder="请输入教师编号"
          clearable
          @keyup.enter.native="handleQuery"
        /> -->
        <el-select v-model="queryParams.teaId" placeholder="请选择授课老师" @change="handleQuery" clearable filterable @blur="selectBlur" @clear="selectClear">
          <el-option
          v-for="item in teacherList"
          :key="item.teaId"
          :label="item.teaName"
          :value="item.teaId"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
<!--      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['student:score:add']"
        >新增</el-button>
      </el-col> -->
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['student:score:edit']"
        >修改</el-button>
      </el-col>
<!--      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['student:score:remove']"
        >删除</el-button>
      </el-col> -->
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['student:score:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="scoreList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
<!--      <el-table-column label="编号" align="center" prop="scoId" /> -->
      <el-table-column label="学号" align="center" prop="stuNumber" />
      <el-table-column label="学生姓名" align="center" prop="stuName" />
      <el-table-column label="课程" align="center" prop="couName" />
      <el-table-column label="授课老师" align="center" prop="teaName" />
      <el-table-column sortable label="成绩" align="center" prop="score" />
      <el-table-column label="绩点" align="center" prop="gpa" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['student:score:edit']"
          >修改</el-button>
          <!-- <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['student:score:remove']"
          >删除</el-button> -->
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

    <!-- 添加或修改成绩管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="成绩" prop="score">
          <el-input-number v-model="form.score" placeholder="请输入成绩" />
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
import { listScore, getScore, delScore, addScore, updateScore } from "@/api/student/score";
//导入类型接口，查询所有课程的方法
import { listAllCourse } from "@/api/student/course";
//导入类型接口，查询所有老师的方法
import { listAllTeacher } from "@/api/student/teacher";

export default {
  name: "Score",
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
      // 成绩管理表格数据
      scoreList: [],
      //课程列表
      courseList: [],
      //教师列表
      teacherList: [],
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
        couId: null,
        teaId: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        score: [
          { required: true, message: "成绩不能为空", trigger: "blur" },
          {
            type: "number",
            min: 0,
            max: 100,
            message: "成绩必须在0到100之间",
            trigger: "blur"
          }
        ],
         
      }
    };
  },
  created() {
    this.getList();
    this.getAllCourse();
    this.getAllTeacher();
  },
  methods: {
    getAllCourse(){
      listAllCourse().then(response =>{
        this.courseList = response;
      })
    },
    getAllTeacher(){
      listAllTeacher().then(response =>{
        this.teacherList = response;
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
    /** 查询成绩管理列表 */
    getList() {
      this.loading = true;
      listScore(this.queryParams).then(response => {
        this.scoreList = response.rows;
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
        scoId: null,
        stuNumber: null,
        stuName: null,
        couId: null,
        teaId: null,
        score: null,
        gpa: null
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
      this.ids = selection.map(item => item.scoId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加成绩管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const scoId = row.scoId || this.ids
      getScore(scoId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改成绩管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.scoId != null) {
            updateScore(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addScore(this.form).then(response => {
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
      const scoIds = row.scoId || this.ids;
      this.$modal.confirm('是否确认删除成绩管理编号为"' + scoIds + '"的数据项？').then(function() {
        return delScore(scoIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('student/score/export', {
        ...this.queryParams
      }, `score_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
