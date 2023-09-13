<template>
  <el-card>
    <el-row :gutter="5">
      <el-col :span="6">
        <el-card style="background-color: powderblue;text-align: center;">
          现有学院:  {{collegecount}} 所
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card style="background-color: powderblue;text-align: center;">
          现设专业:  {{majorcount}} 个
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card style="background-color: powderblue;text-align: center;">
          现有教师:  {{teachercount}} 位
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card style="background-color: powderblue;text-align: center;">
          现有学生:  {{studentcount}} 位
        </el-card>
      </el-col>
    </el-row>
  <el-row :gutter="5" >
      <el-col :span="24">
        <el-card>
          <div style="text-align: right;">
            <el-select  v-model="collId" @change="handleQuery" placeholder="请选择学院" clearable filterable @blur="selectBlur" @clear="selectClear" >
               <el-option
                v-for="item in collegeList"
                :key="item.collId"
                :label="item.collName"
                :value="item.collId"></el-option>
            </el-select>
          </div>
            <div id="nature" style="height: 400px;"></div>
        </el-card>
      </el-col>
  </el-row>
  </el-card>
</template>

<script>
import { listAllCollege } from "@/api/student/college";
import { getAvgScore } from "@/api/student/score";
import { selectcount } from "@/api/student/college";
import { selectmajorcount } from "@/api/student/major";
import { selectstudentcount } from "@/api/student/student";
import { selectteachercount } from "@/api/student/teacher";

export default {
  data(){
    return {
      collegeList: [],
      collegecount: null,
      majorcount:null,
      studentcount:null,
      teachercount:null,
      collId: 5,
    }
  },
  mounted() {
    this.getList();

  },
methods: {
  getList(){
    this.getselectcount();
    this.showBarNature();
    this.getAllCollege();
  },
  getList2(){
    this.showBarNature();
    this.getAllCollege();
  },
  getselectcount(){
    selectcount().then(response =>{
      this.collegecount = response;
    });
    selectmajorcount().then(response =>{
      this.majorcount = response;
    });
    selectstudentcount().then(response =>{
      this.studentcount = response;
    });
    selectteachercount().then(response =>{
      this.teachercount = response;
    });
  },

  selectBlur(e) {
        this.collId = e.target.value;
        this.$forceUpdate(); // 强制更新
      },
      selectClear() {
        this.collId = "";
        this.$forceUpdate(); // 强制更新
      },
  getAllCollege(){
    listAllCollege().then(response =>{
      this.collegeList = response;
    })
  },
  handleQuery() {
    // this.queryParams.pageNum = 1;
    this.getList2();
    // console.log(this.collId);
  },
  showBarNature() {

    this.loading = true;
    getAvgScore(this.collId).then(response => {
      let names = [];
      let values = [];
      let array = response;
      for (let i in array) {
        names.push(array[i].name);
        values.push(array[i].value);
      }
      let showbarNatureEcharts = this.$echarts.init(document.getElementById("nature"));
      showbarNatureEcharts.setOption({
        title: {
          text: '学院平均分前8科目'
        },
        tooltip: {},
        legend: {
          data: ['课程']
        },
        xAxis: {
          data: names
        },
        yAxis: {},
        series: [
          {
            name: '分数',
            type: 'bar',
            data: values,
            label:{
              normal:{
                show:true,
                position: 'top'
              }
            }
          }
        ]
      });
    })
  }
},

};
</script>

<style>
.el-card{
  margin: 5px;
}
</style>

