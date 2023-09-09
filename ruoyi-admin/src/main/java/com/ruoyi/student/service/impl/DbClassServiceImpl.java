package com.ruoyi.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.student.mapper.DbClassMapper;
import com.ruoyi.student.domain.DbClass;
import com.ruoyi.student.service.IDbClassService;

/**
 * 班级管理Service业务层处理
 * 
 * @author AABB
 * @date 2023-09-09
 */
@Service
public class DbClassServiceImpl implements IDbClassService 
{
    @Autowired
    private DbClassMapper dbClassMapper;

    /**
     * 查询班级管理
     * 
     * @param clsId 班级管理主键
     * @return 班级管理
     */
    @Override
    public DbClass selectDbClassByClsId(Long clsId)
    {
        return dbClassMapper.selectDbClassByClsId(clsId);
    }

    /**
     * 查询班级管理列表
     * 
     * @param dbClass 班级管理
     * @return 班级管理
     */
    @Override
    public List<DbClass> selectDbClassList(DbClass dbClass)
    {
        return dbClassMapper.selectDbClassList(dbClass);
    }

    /**
     * 新增班级管理
     * 
     * @param dbClass 班级管理
     * @return 结果
     */
    @Override
    public int insertDbClass(DbClass dbClass)
    {
        return dbClassMapper.insertDbClass(dbClass);
    }

    /**
     * 修改班级管理
     * 
     * @param dbClass 班级管理
     * @return 结果
     */
    @Override
    public int updateDbClass(DbClass dbClass)
    {
        return dbClassMapper.updateDbClass(dbClass);
    }

    /**
     * 批量删除班级管理
     * 
     * @param clsIds 需要删除的班级管理主键
     * @return 结果
     */
    @Override
    public int deleteDbClassByClsIds(Long[] clsIds)
    {
        return dbClassMapper.deleteDbClassByClsIds(clsIds);
    }

    /**
     * 删除班级管理信息
     * 
     * @param clsId 班级管理主键
     * @return 结果
     */
    @Override
    public int deleteDbClassByClsId(Long clsId)
    {
        return dbClassMapper.deleteDbClassByClsId(clsId);
    }
}
