package com.ruoyi.library_book.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.library_book.mapper.LibBookMapper;
import com.ruoyi.library_book.domain.LibBook;
import com.ruoyi.library_book.service.ILibBookService;

/**
 * 书籍信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-08-25
 */
@Service
public class LibBookServiceImpl implements ILibBookService 
{
    @Autowired
    private LibBookMapper libBookMapper;

    /**
     * 查询书籍信息
     * 
     * @param bookId 书籍信息主键
     * @return 书籍信息
     */
    @Override
    public LibBook selectLibBookByBookId(Long bookId)
    {
        return libBookMapper.selectLibBookByBookId(bookId);
    }

    /**
     * 查询书籍信息列表
     * 
     * @param libBook 书籍信息
     * @return 书籍信息
     */
    @Override
    public List<LibBook> selectLibBookList(LibBook libBook)
    {
        return libBookMapper.selectLibBookList(libBook);
    }

    /**
     * 新增书籍信息
     * 
     * @param libBook 书籍信息
     * @return 结果
     */
    @Override
    public int insertLibBook(LibBook libBook)
    {
        return libBookMapper.insertLibBook(libBook);
    }

    /**
     * 修改书籍信息
     * 
     * @param libBook 书籍信息
     * @return 结果
     */
    @Override
    public int updateLibBook(LibBook libBook)
    {
        return libBookMapper.updateLibBook(libBook);
    }

    /**
     * 批量删除书籍信息
     * 
     * @param bookIds 需要删除的书籍信息主键
     * @return 结果
     */
    @Override
    public int deleteLibBookByBookIds(Long[] bookIds)
    {
        return libBookMapper.deleteLibBookByBookIds(bookIds);
    }

    /**
     * 删除书籍信息信息
     * 
     * @param bookId 书籍信息主键
     * @return 结果
     */
    @Override
    public int deleteLibBookByBookId(Long bookId)
    {
        return libBookMapper.deleteLibBookByBookId(bookId);
    }
}
