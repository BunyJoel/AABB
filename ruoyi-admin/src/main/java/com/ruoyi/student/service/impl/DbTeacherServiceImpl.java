package com.ruoyi.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.student.mapper.DbTeacherMapper;
import com.ruoyi.student.domain.DbTeacher;
import com.ruoyi.student.service.IDbTeacherService;

/**
 * 教师管理Service业务层处理
 * 
 * @author AABB
 * @date 2023-09-09
 */
@Service
public class DbTeacherServiceImpl implements IDbTeacherService 
{
    @Autowired
    private DbTeacherMapper dbTeacherMapper;

    /**
     * 查询教师管理
     * 
     * @param teaId 教师管理主键
     * @return 教师管理
     */
    @Override
    public DbTeacher selectDbTeacherByTeaId(Long teaId)
    {
        return dbTeacherMapper.selectDbTeacherByTeaId(teaId);
    }

    /**
     * 查询教师管理列表
     * 
     * @param dbTeacher 教师管理
     * @return 教师管理
     */
    @Override
    public List<DbTeacher> selectDbTeacherList(DbTeacher dbTeacher)
    {
        return dbTeacherMapper.selectDbTeacherList(dbTeacher);
    }

    /**
     * 新增教师管理
     * 
     * @param dbTeacher 教师管理
     * @return 结果
     */
    @Override
    public int insertDbTeacher(DbTeacher dbTeacher)
    {
        return dbTeacherMapper.insertDbTeacher(dbTeacher);
    }

    /**
     * 修改教师管理
     * 
     * @param dbTeacher 教师管理
     * @return 结果
     */
    @Override
    public int updateDbTeacher(DbTeacher dbTeacher)
    {
        return dbTeacherMapper.updateDbTeacher(dbTeacher);
    }

    /**
     * 批量删除教师管理
     * 
     * @param teaIds 需要删除的教师管理主键
     * @return 结果
     */
    @Override
    public int deleteDbTeacherByTeaIds(Long[] teaIds)
    {
        return dbTeacherMapper.deleteDbTeacherByTeaIds(teaIds);
    }

    /**
     * 删除教师管理信息
     * 
     * @param teaId 教师管理主键
     * @return 结果
     */
    @Override
    public int deleteDbTeacherByTeaId(Long teaId)
    {
        return dbTeacherMapper.deleteDbTeacherByTeaId(teaId);
    }
}
