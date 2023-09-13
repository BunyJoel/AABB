import request from '@/utils/request'
//统计平均分
export function getAvgScore(collId){
  return request({
    url: '/student/score/'+ collId,
    method: 'get',
  })
}

// 查询成绩管理列表
export function listScore(query) {
  return request({
    url: '/student/score/list',
    method: 'get',
    params: query
  })
}

// 查询成绩管理详细
export function getScore(scoId) {
  return request({
    url: '/student/score/info/' + scoId,
    method: 'get'
  })
}

// 新增成绩管理
export function addScore(data) {
  return request({
    url: '/student/score',
    method: 'post',
    data: data
  })
}

// 修改成绩管理
export function updateScore(data) {
  return request({
    url: '/student/score',
    method: 'put',
    data: data
  })
}

// 删除成绩管理
export function delScore(scoId) {
  return request({
    url: '/student/score/' + scoId,
    method: 'delete'
  })
}
