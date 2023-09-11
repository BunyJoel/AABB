package com.ruoyi.student.mapper;

import java.util.List;
import com.ruoyi.student.domain.DbStudent;

/**
 * 学生管理Mapper接口
 * 
 * @author AABB
 * @date 2023-09-11
 */
public interface DbStudentMapper 
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
     * 删除学生管理
     * 
     * @param stuNumber 学生管理主键
     * @return 结果
     */
    public int deleteDbStudentByStuNumber(String stuNumber);

    /**
     * 批量删除学生管理
     * 
     * @param stuNumbers 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDbStudentByStuNumbers(String[] stuNumbers);
}
