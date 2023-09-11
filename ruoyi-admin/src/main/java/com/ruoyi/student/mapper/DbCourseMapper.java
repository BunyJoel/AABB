package com.ruoyi.student.mapper;

import java.util.List;
import com.ruoyi.student.domain.DbCourse;

/**
 * 课程管理Mapper接口
 * 
 * @author AABB
 * @date 2023-09-11
 */
public interface DbCourseMapper 
{
    /**
     * 查询课程管理
     * 
     * @param couId 课程管理主键
     * @return 课程管理
     */
    public DbCourse selectDbCourseByCouId(Long couId);

    /**
     * 查询课程管理列表
     * 
     * @param dbCourse 课程管理
     * @return 课程管理集合
     */
    public List<DbCourse> selectDbCourseList(DbCourse dbCourse);

    /**
     * 新增课程管理
     * 
     * @param dbCourse 课程管理
     * @return 结果
     */
    public int insertDbCourse(DbCourse dbCourse);

    /**
     * 修改课程管理
     * 
     * @param dbCourse 课程管理
     * @return 结果
     */
    public int updateDbCourse(DbCourse dbCourse);

    /**
     * 删除课程管理
     * 
     * @param couId 课程管理主键
     * @return 结果
     */
    public int deleteDbCourseByCouId(Long couId);

    /**
     * 批量删除课程管理
     * 
     * @param couIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDbCourseByCouIds(Long[] couIds);
}
