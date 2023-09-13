import request from '@/utils/request'

// 查询学院数量
export function selectcount() {
  return request({
    url: '/student/college/selectcount',
    method: 'get',
  })
}

// 查询所有的学院列表
export function listAllCollege(query) {
  return request({
    url: '/student/college/listall',
    method: 'get',
    params: query
  })
}

// 查询学院列表
export function listCollege(query) {
  return request({
    url: '/student/college/list',
    method: 'get',
    params: query
  })
}

// 查询学院详细
export function getCollege(collId) {
  return request({
    url: '/student/college/' + collId,
    method: 'get'
  })
}

// 新增学院
export function addCollege(data) {
  return request({
    url: '/student/college',
    method: 'post',
    data: data
  })
}

// 修改学院
export function updateCollege(data) {
  return request({
    url: '/student/college',
    method: 'put',
    data: data
  })
}

// 删除学院
export function delCollege(collId) {
  return request({
    url: '/student/college/' + collId,
    method: 'delete'
  })
}
