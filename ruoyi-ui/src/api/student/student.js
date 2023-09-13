import request from '@/utils/request'

// 查询学生数量
export function selectstudentcount() {
  return request({
    url: '/student/student/selectcount',
    method: 'get',
  })
}

// 查询学生管理列表
export function listStudent(query) {
  return request({
    url: '/student/student/list',
    method: 'get',
    params: query
  })
}

// 查询学生管理详细
export function getStudent(stuId) {
  return request({
    url: '/student/student/' + stuId,
    method: 'get'
  })
}

// 新增学生管理
export function addStudent(data) {
  return request({
    url: '/student/student',
    method: 'post',
    data: data
  })
}

// 修改学生管理
export function updateStudent(data) {
  return request({
    url: '/student/student',
    method: 'put',
    data: data
  })
}

// 删除学生管理
export function delStudent(stuId) {
  return request({
    url: '/student/student/' + stuId,
    method: 'delete'
  })
}
