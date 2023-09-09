package com.ruoyi.student.mapper;

import java.util.List;
import com.ruoyi.student.domain.DbClass;

/**
 * 班级管理Mapper接口
 * 
 * @author AABB
 * @date 2023-09-09
 */
public interface DbClassMapper 
{
    /**
     * 查询班级管理
     * 
     * @param clsId 班级管理主键
     * @return 班级管理
     */
    public DbClass selectDbClassByClsId(Long clsId);

    /**
     * 查询班级管理列表
     * 
     * @param dbClass 班级管理
     * @return 班级管理集合
     */
    public List<DbClass> selectDbClassList(DbClass dbClass);

    /**
     * 新增班级管理
     * 
     * @param dbClass 班级管理
     * @return 结果
     */
    public int insertDbClass(DbClass dbClass);

    /**
     * 修改班级管理
     * 
     * @param dbClass 班级管理
     * @return 结果
     */
    public int updateDbClass(DbClass dbClass);

    /**
     * 删除班级管理
     * 
     * @param clsId 班级管理主键
     * @return 结果
     */
    public int deleteDbClassByClsId(Long clsId);

    /**
     * 批量删除班级管理
     * 
     * @param clsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDbClassByClsIds(Long[] clsIds);
}
