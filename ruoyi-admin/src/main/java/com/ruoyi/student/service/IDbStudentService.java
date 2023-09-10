package com.ruoyi.student.service;

import java.util.List;
import com.ruoyi.student.domain.DbStudent;

/**
 * 学生管理Service接口
 * 
 * @author AABB
 * @date 2023-09-10
 */
public interface IDbStudentService 
{
    /**
     * 查询学生管理
     * 
     * @param stuNumber 学生管理主键
     * @return 学生管理
     */
    public DbStudent selectDbStudentByStuNumber(String stuNumber);

    /**
     * 查询学生管理列表
     * 
     * @param dbStudent 学生管理
     * @return 学生管理集合
     */
    public List<DbStudent> selectDbStudentList(DbStudent dbStudent);

    /**
     * 新增学生管理
     * 
     * @param dbStudent 学生管理
     * @return 结果
     */
    public int insertDbStudent(DbStudent dbStudent);

    /**
     * 修改学生管理
     * 
     * @param dbStudent 学生管理
     * @return 结果
     */
    public int updateDbStudent(DbStudent dbStudent);

    /**
     * 批量删除学生管理
     * 
     * @param stuNumbers 需要删除的学生管理主键集合
     * @return 结果
     */
    public int deleteDbStudentByStuNumbers(String[] stuNumbers);

    /**
     * 删除学生管理信息
     * 
     * @param stuNumber 学生管理主键
     * @return 结果
     */
    public int deleteDbStudentByStuNumber(String stuNumber);
}
