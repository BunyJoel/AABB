package com.ruoyi.student.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学院对象 db_ college
 * 
 * @author AABB
 * @date 2023-09-09
 */
public class dbcollege extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 学院id */
    @Excel(name = "学院id")
    private Long collId;

    /** 学院名称 */
    @Excel(name = "学院名称")
    private String collName;

    public void setCollId(Long collId) 
    {
        this.collId = collId;
    }

    public Long getCollId() 
    {
        return collId;
    }
    public void setCollName(String collName) 
    {
        this.collName = collName;
    }

    public String getCollName() 
    {
        return collName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("collId", getCollId())
            .append("collName", getCollName())
            .toString();
    }
}
