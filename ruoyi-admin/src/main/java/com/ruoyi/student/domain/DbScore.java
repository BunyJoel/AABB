package com.ruoyi.student.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 成绩管理对象 db_score
 * 
 * @author AABB
 * @date 2023-09-10
 */
public class DbScore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    @Excel(name = "编号")
    private Long scoId;

    /** 学号 */
    @Excel(name = "学号")
    private String stuNumber;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String stuName;

    /** 课程编号 */
//    @Excel(name = "课程编号")
    private Long couId;

    @Excel(name = "课程名称")
    private String couName;

    /** 教师编号 */
//    @Excel(name = "教师编号")
    private Long teaId;

    @Excel(name = "授课老师")
    private String teaName;

    /** 成绩 */
    @Excel(name = "成绩")
    private BigDecimal score;

    /** 绩点 */
    @Excel(name = "绩点")
    private BigDecimal gpa;

    @Excel(name = "班级id")
    private Long collId;

    @Excel(name = "学生Id")
    private Long stuId;


    public void setScoId(Long scoId) 
    {
        this.scoId = scoId;
    }

    public Long getScoId() 
    {
        return scoId;
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
    public void setCouId(Long couId) 
    {
        this.couId = couId;
    }

    public Long getCouId() 
    {
        return couId;
    }
    public void setTeaId(Long teaId) 
    {
        this.teaId = teaId;
    }

    public Long getTeaId() 
    {
        return teaId;
    }
    public void setScore(BigDecimal score) 
    {
        this.score = score;
    }

    public BigDecimal getScore() 
    {
        return score;
    }
    public void setGpa(BigDecimal gpa) 
    {
        this.gpa = gpa;
    }

    public BigDecimal getGpa() 
    {
        return gpa;
    }

    public String getCouName() {
        return couName;
    }

    public void setCouName(String couName) {
        this.couName = couName;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    public Long getCollId() {
        return collId;
    }

    public void setCollId(Long collId) {
        this.collId = collId;
    }

    public Long getStuId() {
        return stuId;
    }

    public void setStuId(Long stuId) {
        this.stuId = stuId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("scoId", getScoId())
            .append("stuNumber", getStuNumber())
            .append("stuName", getStuName())
            .append("couId", getCouId())
            .append("teaId", getTeaId())
            .append("score", getScore())
            .append("gpa", getGpa())
            .toString();
    }
}
