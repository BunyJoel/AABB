package com.ruoyi.student.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 课程管理对象 db_course
 * 
 * @author AABB
 * @date 2023-09-09
 */
public class DbCourse extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 课程id */
    @Excel(name = "课程id")
    private Long couId;

    /** 课程名称 */
    @Excel(name = "课程名称")
    private String couName;

    /** 教师id */
    @Excel(name = "教师id")
    private Long teaId;

    /** 学分 */
    @Excel(name = "学分")
    private BigDecimal couCredit;

    /** 学时 */
    @Excel(name = "学时")
    private Long couHour;

    /** 考核方式 */
    @Excel(name = "考核方式")
    private String couWay;

    public void setCouId(Long couId) 
    {
        this.couId = couId;
    }

    public Long getCouId() 
    {
        return couId;
    }
    public void setCouName(String couName) 
    {
        this.couName = couName;
    }

    public String getCouName() 
    {
        return couName;
    }
    public void setTeaId(Long teaId) 
    {
        this.teaId = teaId;
    }

    public Long getTeaId() 
    {
        return teaId;
    }
    public void setCouCredit(BigDecimal couCredit) 
    {
        this.couCredit = couCredit;
    }

    public BigDecimal getCouCredit() 
    {
        return couCredit;
    }
    public void setCouHour(Long couHour) 
    {
        this.couHour = couHour;
    }

    public Long getCouHour() 
    {
        return couHour;
    }
    public void setCouWay(String couWay) 
    {
        this.couWay = couWay;
    }

    public String getCouWay() 
    {
        return couWay;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("couId", getCouId())
            .append("couName", getCouName())
            .append("teaId", getTeaId())
            .append("couCredit", getCouCredit())
            .append("couHour", getCouHour())
            .append("couWay", getCouWay())
            .toString();
    }
}
