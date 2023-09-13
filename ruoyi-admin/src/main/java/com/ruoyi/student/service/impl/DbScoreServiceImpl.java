package com.ruoyi.student.service.impl;

import java.util.List;

import com.ruoyi.student.pojo.Information;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.student.mapper.DbScoreMapper;
import com.ruoyi.student.domain.DbScore;
import com.ruoyi.student.service.IDbScoreService;

/**
 * 成绩管理Service业务层处理
 * 
 * @author AABB
 * @date 2023-09-10
 */
@Service
public class DbScoreServiceImpl implements IDbScoreService 
{
    @Autowired
    private DbScoreMapper dbScoreMapper;

    @Override
    public List<Information> getAvgScore(Long collId) {
        return dbScoreMapper.getAvgScore(collId);
    }


    /**
     * 查询成绩管理
     * 
     * @param scoId 成绩管理主键
     * @return 成绩管理
     */
    @Override
    public DbScore selectDbScoreByScoId(Long scoId)
    {
        return dbScoreMapper.selectDbScoreByScoId(scoId);
    }

    /**
     * 查询成绩管理列表
     * 
     * @param dbScore 成绩管理
     * @return 成绩管理
     */
    @Override
    public List<DbScore> selectDbScoreList(DbScore dbScore)
    {
        return dbScoreMapper.selectDbScoreList(dbScore);
    }

    /**
     * 新增成绩管理
     * 
     * @param dbScore 成绩管理
     * @return 结果
     */
    @Override
    public int insertDbScore(DbScore dbScore)
    {
        return dbScoreMapper.insertDbScore(dbScore);
    }

    /**
     * 修改成绩管理
     * 
     * @param dbScore 成绩管理
     * @return 结果
     */
    @Override
    public int updateDbScore(DbScore dbScore)
    {
        return dbScoreMapper.updateDbScore(dbScore);
    }

    /**
     * 批量删除成绩管理
     * 
     * @param scoIds 需要删除的成绩管理主键
     * @return 结果
     */
    @Override
    public int deleteDbScoreByScoIds(Long[] scoIds)
    {
        return dbScoreMapper.deleteDbScoreByScoIds(scoIds);
    }

    /**
     * 删除成绩管理信息
     * 
     * @param scoId 成绩管理主键
     * @return 结果
     */
    @Override
    public int deleteDbScoreByScoId(Long scoId)
    {
        return dbScoreMapper.deleteDbScoreByScoId(scoId);
    }
}
