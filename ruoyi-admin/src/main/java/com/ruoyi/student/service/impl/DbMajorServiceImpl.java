package com.ruoyi.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.student.mapper.DbMajorMapper;
import com.ruoyi.student.domain.DbMajor;
import com.ruoyi.student.service.IDbMajorService;

/**
 * 专业管理Service业务层处理
 * 
 * @author AABB
 * @date 2023-09-09
 */
@Service
public class DbMajorServiceImpl implements IDbMajorService 
{
    @Autowired
    private DbMajorMapper dbMajorMapper;

    /**
     * 查询专业管理
     * 
     * @param majId 专业管理主键
     * @return 专业管理
     */
    @Override
    public DbMajor selectDbMajorByMajId(Long majId)
    {
        return dbMajorMapper.selectDbMajorByMajId(majId);
    }

    /**
     * 查询专业管理列表
     * 
     * @param dbMajor 专业管理
     * @return 专业管理
     */
    @Override
    public List<DbMajor> selectDbMajorList(DbMajor dbMajor)
    {
        return dbMajorMapper.selectDbMajorList(dbMajor);
    }

    /**
     * 新增专业管理
     * 
     * @param dbMajor 专业管理
     * @return 结果
     */
    @Override
    public int insertDbMajor(DbMajor dbMajor)
    {
        return dbMajorMapper.insertDbMajor(dbMajor);
    }

    /**
     * 修改专业管理
     * 
     * @param dbMajor 专业管理
     * @return 结果
     */
    @Override
    public int updateDbMajor(DbMajor dbMajor)
    {
        return dbMajorMapper.updateDbMajor(dbMajor);
    }

    /**
     * 批量删除专业管理
     * 
     * @param majIds 需要删除的专业管理主键
     * @return 结果
     */
    @Override
    public int deleteDbMajorByMajIds(Long[] majIds)
    {
        return dbMajorMapper.deleteDbMajorByMajIds(majIds);
    }

    /**
     * 删除专业管理信息
     * 
     * @param majId 专业管理主键
     * @return 结果
     */
    @Override
    public int deleteDbMajorByMajId(Long majId)
    {
        return dbMajorMapper.deleteDbMajorByMajId(majId);
    }
}
