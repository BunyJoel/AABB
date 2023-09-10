import request from '@/utils/request'

// 查询所有的课程列表
export function listAllCourse(query) {
  return request({
    url: '/student/course/listall',
    method: 'get',
    params: query
  })
}

// 查询课程管理列表
export function listCourse(query) {
  return request({
    url: '/student/course/list',
    method: 'get',
    params: query
  })
}

// 查询课程管理详细
export function getCourse(couId) {
  return request({
    url: '/student/course/' + couId,
    method: 'get'
  })
}

// 新增课程管理
export function addCourse(data) {
  return request({
    url: '/student/course',
    method: 'post',
    data: data
  })
}

// 修改课程管理
export function updateCourse(data) {
  return request({
    url: '/student/course',
    method: 'put',
    data: data
  })
}

// 删除课程管理
export function delCourse(couId) {
  return request({
    url: '/student/course/' + couId,
    method: 'delete'
  })
}
