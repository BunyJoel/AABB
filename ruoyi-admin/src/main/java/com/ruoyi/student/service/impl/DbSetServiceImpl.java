package com.ruoyi.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.student.mapper.DbSetMapper;
import com.ruoyi.student.domain.DbSet;
import com.ruoyi.student.service.IDbSetService;

/**
 * 开发管理Service业务层处理
 * 
 * @author AABB
 * @date 2023-09-09
 */
@Service
public class DbSetServiceImpl implements IDbSetService 
{
    @Autowired
    private DbSetMapper dbSetMapper;

    /**
     * 查询开发管理
     * 
     * @param setId 开发管理主键
     * @return 开发管理
     */
    @Override
    public DbSet selectDbSetBySetId(Long setId)
    {
        return dbSetMapper.selectDbSetBySetId(setId);
    }

    /**
     * 查询开发管理列表
     * 
     * @param dbSet 开发管理
     * @return 开发管理
     */
    @Override
    public List<DbSet> selectDbSetList(DbSet dbSet)
    {
        return dbSetMapper.selectDbSetList(dbSet);
    }

    /**
     * 新增开发管理
     * 
     * @param dbSet 开发管理
     * @return 结果
     */
    @Override
    public int insertDbSet(DbSet dbSet)
    {
        return dbSetMapper.insertDbSet(dbSet);
    }

    /**
     * 修改开发管理
     * 
     * @param dbSet 开发管理
     * @return 结果
     */
    @Override
    public int updateDbSet(DbSet dbSet)
    {
        return dbSetMapper.updateDbSet(dbSet);
    }

    /**
     * 批量删除开发管理
     * 
     * @param setIds 需要删除的开发管理主键
     * @return 结果
     */
    @Override
    public int deleteDbSetBySetIds(Long[] setIds)
    {
        return dbSetMapper.deleteDbSetBySetIds(setIds);
    }

    /**
     * 删除开发管理信息
     * 
     * @param setId 开发管理主键
     * @return 结果
     */
    @Override
    public int deleteDbSetBySetId(Long setId)
    {
        return dbSetMapper.deleteDbSetBySetId(setId);
    }
}
