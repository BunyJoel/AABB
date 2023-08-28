import request from '@/utils/request'

// 查询书籍信息列表
export function listBook(query) {
  return request({
    url: '/library_book/book/list',
    method: 'get',
    params: query
  })
}

// 查询书籍信息详细
export function getBook(bookId) {
  return request({
    url: '/library_book/book/' + bookId,
    method: 'get'
  })
}

// 新增书籍信息
export function addBook(data) {
  return request({
    url: '/library_book/book',
    method: 'post',
    data: data
  })
}

// 修改书籍信息
export function updateBook(data) {
  return request({
    url: '/library_book/book',
    method: 'put',
    data: data
  })
}

// 删除书籍信息
export function delBook(bookId) {
  return request({
    url: '/library_book/book/' + bookId,
    method: 'delete'
  })
}
