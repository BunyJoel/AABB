package com.ruoyi.student.service;

import java.util.List;
import com.ruoyi.student.domain.DbCourse;

/**
 * 课程管理Service接口
 * 
 * @author AABB
 * @date 2023-09-11
 */
public interface IDbCourseService 
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
     * 批量删除课程管理
     * 
     * @param couIds 需要删除的课程管理主键集合
     * @return 结果
     */
    public int deleteDbCourseByCouIds(Long[] couIds);

    /**
     * 删除课程管理信息
     * 
     * @param couId 课程管理主键
     * @return 结果
     */
    public int deleteDbCourseByCouId(Long couId);
}
