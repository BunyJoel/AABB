package com.ruoyi.library_book.service;

import java.util.List;
import com.ruoyi.library_book.domain.LibBook;

/**
 * 书籍信息Service接口
 * 
 * @author ruoyi
 * @date 2023-08-25
 */
public interface ILibBookService 
{
    /**
     * 查询书籍信息
     * 
     * @param bookId 书籍信息主键
     * @return 书籍信息
     */
    public LibBook selectLibBookByBookId(Long bookId);

    /**
     * 查询书籍信息列表
     * 
     * @param libBook 书籍信息
     * @return 书籍信息集合
     */
    public List<LibBook> selectLibBookList(LibBook libBook);

    /**
     * 新增书籍信息
     * 
     * @param libBook 书籍信息
     * @return 结果
     */
    public int insertLibBook(LibBook libBook);

    /**
     * 修改书籍信息
     * 
     * @param libBook 书籍信息
     * @return 结果
     */
    public int updateLibBook(LibBook libBook);

    /**
     * 批量删除书籍信息
     * 
     * @param bookIds 需要删除的书籍信息主键集合
     * @return 结果
     */
    public int deleteLibBookByBookIds(Long[] bookIds);

    /**
     * 删除书籍信息信息
     * 
     * @param bookId 书籍信息主键
     * @return 结果
     */
    public int deleteLibBookByBookId(Long bookId);
}
