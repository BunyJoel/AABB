package com.ruoyi.student.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 教师管理对象 db_teacher
 * 
 * @author AABB
 * @date 2023-09-09
 */
public class DbTeacher extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 教师id */
    @Excel(name = "教师id")
    private Long teaId;

    /** 教师名称 */
    @Excel(name = "教师名称")
    private String teaName;

    /** 性别 */
    @Excel(name = "性别")
    private String teaGender;

    /** 学院id */
//    @Excel(name = "学院id")
    private Long collId;

    @Excel(name = "学院名称")
    private String collName;

    public void setTeaId(Long teaId) 
    {
        this.teaId = teaId;
    }

    public Long getTeaId() 
    {
        return teaId;
    }
    public void setTeaName(String teaName) 
    {
        this.teaName = teaName;
    }

    public String getTeaName() 
    {
        return teaName;
    }
    public void setTeaGender(String teaGender) 
    {
        this.teaGender = teaGender;
    }

    public String getTeaGender() 
    {
        return teaGender;
    }
    public void setCollId(Long collId) 
    {
        this.collId = collId;
    }

    public Long getCollId() 
    {
        return collId;
    }

    public String getCollName() {
        return collName;
    }

    public void setCollName(String collName) {
        this.collName = collName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("teaId", getTeaId())
            .append("teaName", getTeaName())
            .append("teaGender", getTeaGender())
            .append("collId", getCollId())
            .toString();
    }
}
