package com.ruoyi.student.mapper;

import java.util.List;
import com.ruoyi.student.domain.DbSet;

/**
 * 开发管理Mapper接口
 * 
 * @author AABB
 * @date 2023-09-09
 */
public interface DbSetMapper 
{
    /**
     * 查询开发管理
     * 
     * @param setId 开发管理主键
     * @return 开发管理
     */
    public DbSet selectDbSetBySetId(Long setId);

    /**
     * 查询开发管理列表
     * 
     * @param dbSet 开发管理
     * @return 开发管理集合
     */
    public List<DbSet> selectDbSetList(DbSet dbSet);

    /**
     * 新增开发管理
     * 
     * @param dbSet 开发管理
     * @return 结果
     */
    public int insertDbSet(DbSet dbSet);

    /**
     * 修改开发管理
     * 
     * @param dbSet 开发管理
     * @return 结果
     */
    public int updateDbSet(DbSet dbSet);

    /**
     * 删除开发管理
     * 
     * @param setId 开发管理主键
     * @return 结果
     */
    public int deleteDbSetBySetId(Long setId);

    /**
     * 批量删除开发管理
     * 
     * @param setIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDbSetBySetIds(Long[] setIds);
}
