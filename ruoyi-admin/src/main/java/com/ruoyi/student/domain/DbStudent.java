package com.ruoyi.student.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生管理对象 db_student
 * 
 * @author AABB
 * @date 2023-09-13
 */
public class DbStudent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    @Excel(name = "编号")
    private Long stuId;

    /** 学号 */
    @Excel(name = "学号")
    private String stuNumber;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String stuName;

    /** 班级id */
    @Excel(name = "班级名称")
    private String clsName;

    /** 性别 */
    @Excel(name = "性别")
    private String stuGender;

    /** 电话 */
    @Excel(name = "电话")
    private String stuPhone;

    /** 平均绩点 */
    @Excel(name = "平均绩点")
    private BigDecimal stuAvg;

    /** 生源地 */
    @Excel(name = "生源地")
    private String stuAddress;

    @Excel(name = "班级Id")
    private Long clsId;

    public void setStuId(Long stuId) 
    {
        this.stuId = stuId;
    }

    public Long getStuId() 
    {
        return stuId;
    }
    public void setStuNumber(String stuNumber) 
    {
        this.stuNumber = stuNumber;
    }

    public String getStuNumber() 
    {
        return stuNumber;
    }
    public void setStuName(String stuName) 
    {
        this.stuName = stuName;
    }

    public String getStuName() 
    {
        return stuName;
    }
    public void setClsName(String clsName) 
    {
        this.clsName = clsName;
    }

    public String getClsName() 
    {
        return clsName;
    }
    public void setStuGender(String stuGender) 
    {
        this.stuGender = stuGender;
    }

    public String getStuGender() 
    {
        return stuGender;
    }
    public void setStuPhone(String stuPhone) 
    {
        this.stuPhone = stuPhone;
    }

    public String getStuPhone() 
    {
        return stuPhone;
    }
    public void setStuAvg(BigDecimal stuAvg) 
    {
        this.stuAvg = stuAvg;
    }

    public BigDecimal getStuAvg() 
    {
        return stuAvg;
    }
    public void setStuAddress(String stuAddress) 
    {
        this.stuAddress = stuAddress;
    }

    public String getStuAddress() 
    {
        return stuAddress;
    }

    public Long getClsId() {
        return clsId;
    }

    public void setClsId(Long clsId) {
        this.clsId = clsId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("stuId", getStuId())
            .append("stuNumber", getStuNumber())
            .append("stuName", getStuName())
            .append("clsName", getClsName())
            .append("stuGender", getStuGender())
            .append("stuPhone", getStuPhone())
            .append("stuAvg", getStuAvg())
            .append("stuAddress", getStuAddress())
            .toString();
    }
}
