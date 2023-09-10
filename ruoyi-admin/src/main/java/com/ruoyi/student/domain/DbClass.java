package com.ruoyi.student.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 班级管理对象 db_class
 * 
 * @author AABB
 * @date 2023-09-09
 */
public class DbClass extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 班级id */
    @Excel(name = "班级id")
    private Long clsId;

    /** 班级名称 */
    @Excel(name = "班级名称")
    private String clsName;

    /** 专业id */
//    @Excel(name = "专业id")
    private Long majId;

    private String majName;

    public void setClsId(Long clsId) 
    {
        this.clsId = clsId;
    }

    public Long getClsId() 
    {
        return clsId;
    }
    public void setClsName(String clsName) 
    {
        this.clsName = clsName;
    }

    public String getClsName() 
    {
        return clsName;
    }
    public void setMajId(Long majId) 
    {
        this.majId = majId;
    }

    public Long getMajId() 
    {
        return majId;
    }

    public String getMajName() {
        return majName;
    }

    public void setMajName(String majName) {
        this.majName = majName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("clsId", getClsId())
            .append("clsName", getClsName())
            .append("majId", getMajId())
            .toString();
    }
}
