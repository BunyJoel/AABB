package com.ruoyi.library_book.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 书籍信息对象 lib_book
 * 
 * @author ruoyi
 * @date 2023-08-25
 */
public class LibBook extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 图书编号 */
    @Excel(name = "图书编号")
    private Long bookId;

    /** 书名 */
    @Excel(name = "书名")
    private String bookName;

    /** 类别 */
    @Excel(name = "类别")
    private Long typeId;

    /** 出版社 */
    @Excel(name = "出版社")
    private Long publisherId;

    /** 图书作者 */
    @Excel(name = "图书作者")
    private String bookAuther;

    /** 刊号 */
    @Excel(name = "刊号")
    private String bookIssn;

    /** 封面 */
    @Excel(name = "封面")
    private String bookPic;

    /** 简介 */
    @Excel(name = "简介")
    private String bookInfo;

    public void setBookId(Long bookId) 
    {
        this.bookId = bookId;
    }

    public Long getBookId() 
    {
        return bookId;
    }
    public void setBookName(String bookName) 
    {
        this.bookName = bookName;
    }

    public String getBookName() 
    {
        return bookName;
    }
    public void setTypeId(Long typeId) 
    {
        this.typeId = typeId;
    }

    public Long getTypeId() 
    {
        return typeId;
    }
    public void setPublisherId(Long publisherId) 
    {
        this.publisherId = publisherId;
    }

    public Long getPublisherId() 
    {
        return publisherId;
    }
    public void setBookAuther(String bookAuther) 
    {
        this.bookAuther = bookAuther;
    }

    public String getBookAuther() 
    {
        return bookAuther;
    }
    public void setBookIssn(String bookIssn) 
    {
        this.bookIssn = bookIssn;
    }

    public String getBookIssn() 
    {
        return bookIssn;
    }
    public void setBookPic(String bookPic) 
    {
        this.bookPic = bookPic;
    }

    public String getBookPic() 
    {
        return bookPic;
    }
    public void setBookInfo(String bookInfo) 
    {
        this.bookInfo = bookInfo;
    }

    public String getBookInfo() 
    {
        return bookInfo;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("bookId", getBookId())
            .append("bookName", getBookName())
            .append("typeId", getTypeId())
            .append("publisherId", getPublisherId())
            .append("bookAuther", getBookAuther())
            .append("bookIssn", getBookIssn())
            .append("bookPic", getBookPic())
            .append("bookInfo", getBookInfo())
            .toString();
    }
}
