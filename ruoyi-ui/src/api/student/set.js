import request from '@/utils/request'

// 查询开发管理列表
export function listSet(query) {
  return request({
    url: '/student/set/list',
    method: 'get',
    params: query
  })
}

// 查询开发管理详细
export function getSet(setId) {
  return request({
    url: '/student/set/' + setId,
    method: 'get'
  })
}

// 新增开发管理
export function addSet(data) {
  return request({
    url: '/student/set',
    method: 'post',
    data: data
  })
}

// 修改开发管理
export function updateSet(data) {
  return request({
    url: '/student/set',
    method: 'put',
    data: data
  })
}

// 删除开发管理
export function delSet(setId) {
  return request({
    url: '/student/set/' + setId,
    method: 'delete'
  })
}
