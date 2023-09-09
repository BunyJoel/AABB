package com.ruoyi.student.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 专业管理对象 db_major
 * 
 * @author AABB
 * @date 2023-09-09
 */
public class DbMajor extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 专业id */
//    @Excel(name = "专业id")
    private Long majId;

    /** 专业名称 */
    @Excel(name = "专业名称")
    private String majName;

    /** 学院id */
    @Excel(name = "学院id")
    private Long collId;

//    学院名称
    @Excel(name = "学院名称")
    private String collName;

    public String getCollName() {
        return collName;
    }

    public void setCollName(String collName) {
        this.collName = collName;
    }

    public void setMajId(Long majId)
    {
        this.majId = majId;
    }

    public Long getMajId() 
    {
        return majId;
    }
    public void setMajName(String majName) 
    {
        this.majName = majName;
    }

    public String getMajName() 
    {
        return majName;
    }
    public void setCollId(Long collId) 
    {
        this.collId = collId;
    }

    public Long getCollId() 
    {
        return collId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("majId", getMajId())
            .append("majName", getMajName())
            .append("collId", getCollId())
            .toString();
    }
}
