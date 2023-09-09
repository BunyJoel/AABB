package com.ruoyi.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.student.mapper.DbCourseMapper;
import com.ruoyi.student.domain.DbCourse;
import com.ruoyi.student.service.IDbCourseService;

/**
 * 课程管理Service业务层处理
 * 
 * @author AABB
 * @date 2023-09-09
 */
@Service
public class DbCourseServiceImpl implements IDbCourseService 
{
    @Autowired
    private DbCourseMapper dbCourseMapper;

    /**
     * 查询课程管理
     * 
     * @param couId 课程管理主键
     * @return 课程管理
     */
    @Override
    public DbCourse selectDbCourseByCouId(Long couId)
    {
        return dbCourseMapper.selectDbCourseByCouId(couId);
    }

    /**
     * 查询课程管理列表
     * 
     * @param dbCourse 课程管理
     * @return 课程管理
     */
    @Override
    public List<DbCourse> selectDbCourseList(DbCourse dbCourse)
    {
        return dbCourseMapper.selectDbCourseList(dbCourse);
    }

    /**
     * 新增课程管理
     * 
     * @param dbCourse 课程管理
     * @return 结果
     */
    @Override
    public int insertDbCourse(DbCourse dbCourse)
    {
        return dbCourseMapper.insertDbCourse(dbCourse);
    }

    /**
     * 修改课程管理
     * 
     * @param dbCourse 课程管理
     * @return 结果
     */
    @Override
    public int updateDbCourse(DbCourse dbCourse)
    {
        return dbCourseMapper.updateDbCourse(dbCourse);
    }

    /**
     * 批量删除课程管理
     * 
     * @param couIds 需要删除的课程管理主键
     * @return 结果
     */
    @Override
    public int deleteDbCourseByCouIds(Long[] couIds)
    {
        return dbCourseMapper.deleteDbCourseByCouIds(couIds);
    }

    /**
     * 删除课程管理信息
     * 
     * @param couId 课程管理主键
     * @return 结果
     */
    @Override
    public int deleteDbCourseByCouId(Long couId)
    {
        return dbCourseMapper.deleteDbCourseByCouId(couId);
    }
}
