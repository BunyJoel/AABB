package com.ruoyi.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.student.mapper.DbStudentMapper;
import com.ruoyi.student.domain.DbStudent;
import com.ruoyi.student.service.IDbStudentService;

/**
 * 学生管理Service业务层处理
 * 
 * @author AABB
 * @date 2023-09-11
 */
@Service
public class DbStudentServiceImpl implements IDbStudentService 
{
    @Autowired
    private DbStudentMapper dbStudentMapper;

    /**
     * 查询学生管理
     * 
     * @param stuNumber 学生管理主键
     * @return 学生管理
     */
    @Override
    public DbStudent selectDbStudentByStuNumber(String stuNumber)
    {
        return dbStudentMapper.selectDbStudentByStuNumber(stuNumber);
    }

    /**
     * 查询学生管理列表
     * 
     * @param dbStudent 学生管理
     * @return 学生管理
     */
    @Override
    public List<DbStudent> selectDbStudentList(DbStudent dbStudent)
    {
        return dbStudentMapper.selectDbStudentList(dbStudent);
    }

    /**
     * 新增学生管理
     * 
     * @param dbStudent 学生管理
     * @return 结果
     */
    @Override
    public int insertDbStudent(DbStudent dbStudent)
    {
        return dbStudentMapper.insertDbStudent(dbStudent);
    }

    /**
     * 修改学生管理
     * 
     * @param dbStudent 学生管理
     * @return 结果
     */
    @Override
    public int updateDbStudent(DbStudent dbStudent)
    {
        return dbStudentMapper.updateDbStudent(dbStudent);
    }

    /**
     * 批量删除学生管理
     * 
     * @param stuNumbers 需要删除的学生管理主键
     * @return 结果
     */
    @Override
    public int deleteDbStudentByStuNumbers(String[] stuNumbers)
    {
        return dbStudentMapper.deleteDbStudentByStuNumbers(stuNumbers);
    }

    /**
     * 删除学生管理信息
     * 
     * @param stuNumber 学生管理主键
     * @return 结果
     */
    @Override
    public int deleteDbStudentByStuNumber(String stuNumber)
    {
        return dbStudentMapper.deleteDbStudentByStuNumber(stuNumber);
    }
}
