package com.ruoyi.student.service;

import java.util.List;
import com.ruoyi.student.domain.DbTeacher;

/**
 * 教师管理Service接口
 * 
 * @author AABB
 * @date 2023-09-09
 */
public interface IDbTeacherService 
{
    String selectcount();

    /**
     * 查询教师管理
     * 
     * @param teaId 教师管理主键
     * @return 教师管理
     */
    public DbTeacher selectDbTeacherByTeaId(Long teaId);

    /**
     * 查询教师管理列表
     * 
     * @param dbTeacher 教师管理
     * @return 教师管理集合
     */
    public List<DbTeacher> selectDbTeacherList(DbTeacher dbTeacher);

    /**
     * 新增教师管理
     * 
     * @param dbTeacher 教师管理
     * @return 结果
     */
    public int insertDbTeacher(DbTeacher dbTeacher);

    /**
     * 修改教师管理
     * 
     * @param dbTeacher 教师管理
     * @return 结果
     */
    public int updateDbTeacher(DbTeacher dbTeacher);

    /**
     * 批量删除教师管理
     * 
     * @param teaIds 需要删除的教师管理主键集合
     * @return 结果
     */
    public int deleteDbTeacherByTeaIds(Long[] teaIds);

    /**
     * 删除教师管理信息
     * 
     * @param teaId 教师管理主键
     * @return 结果
     */
    public int deleteDbTeacherByTeaId(Long teaId);
}
