package com.ruoyi.student.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 开发管理对象 db_set
 * 
 * @author AABB
 * @date 2023-09-09
 */
public class DbSet extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    @Excel(name = "编号")
    private Long setId;

    /** 课程id */
//    @Excel(name = "课程id")
    private Long couId;

    /** 班级id */
//    @Excel(name = "班级id")
    private Long majId;

    @Excel(name = "班级名称")
    private String couName;
    @Excel(name = "专业名称")
    private String majName;

    public void setSetId(Long setId) 
    {
        this.setId = setId;
    }

    public Long getSetId() 
    {
        return setId;
    }
    public void setCouId(Long couId) 
    {
        this.couId = couId;
    }

    public Long getCouId() 
    {
        return couId;
    }
    public void setMajId(Long majId) 
    {
        this.majId = majId;
    }

    public Long getMajId() 
    {
        return majId;
    }

    public String getCouName() {
        return couName;
    }

    public void setCouName(String couName) {
        this.couName = couName;
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
            .append("setId", getSetId())
            .append("couId", getCouId())
            .append("majId", getMajId())
            .toString();
    }
}
