import request from '@/utils/request'

export function listAllMajor(query) {
  return request({
    url: '/student/major/listall',
    method: 'get',
    params: query
  })
}

// 查询专业管理列表
export function listMajor(query) {
  return request({
    url: '/student/major/list',
    method: 'get',
    params: query
  })
}

// 查询专业管理详细
export function getMajor(majId) {
  return request({
    url: '/student/major/' + majId,
    method: 'get'
  })
}

// 新增专业管理
export function addMajor(data) {
  return request({
    url: '/student/major',
    method: 'post',
    data: data
  })
}

// 修改专业管理
export function updateMajor(data) {
  return request({
    url: '/student/major',
    method: 'put',
    data: data
  })
}

// 删除专业管理
export function delMajor(majId) {
  return request({
    url: '/student/major/' + majId,
    method: 'delete'
  })
}
