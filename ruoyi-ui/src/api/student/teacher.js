import request from '@/utils/request'

// 查询所有的教师列表
export function listAllTeacher(query) {
  return request({
    url: '/student/teacher/listall',
    method: 'get',
    params: query
  })
}

// 查询教师管理列表
export function listTeacher(query) {
  return request({
    url: '/student/teacher/list',
    method: 'get',
    params: query
  })
}

// 查询教师管理详细
export function getTeacher(teaId) {
  return request({
    url: '/student/teacher/' + teaId,
    method: 'get'
  })
}

// 新增教师管理
export function addTeacher(data) {
  return request({
    url: '/student/teacher',
    method: 'post',
    data: data
  })
}

// 修改教师管理
export function updateTeacher(data) {
  return request({
    url: '/student/teacher',
    method: 'put',
    data: data
  })
}

// 删除教师管理
export function delTeacher(teaId) {
  return request({
    url: '/student/teacher/' + teaId,
    method: 'delete'
  })
}
