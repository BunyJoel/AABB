package com.ruoyi.student.mapper;

import java.util.List;
import com.ruoyi.student.domain.DbScore;
import com.ruoyi.student.pojo.Information;
import org.apache.ibatis.annotations.Param;

/**
 * 成绩管理Mapper接口
 * 
 * @author AABB
 * @date 2023-09-10
 */
public interface DbScoreMapper 
{

    List<Information> getAvgScore(@Param("collId") Long collId);

    /**
     * 查询成绩管理
     * 
     * @param scoId 成绩管理主键
     * @return 成绩管理
     */
    public DbScore selectDbScoreByScoId(Long scoId);

    /**
     * 查询成绩管理列表
     * 
     * @param dbScore 成绩管理
     * @return 成绩管理集合
     */
    public List<DbScore> selectDbScoreList(DbScore dbScore);

    /**
     * 新增成绩管理
     * 
     * @param dbScore 成绩管理
     * @return 结果
     */
    public int insertDbScore(DbScore dbScore);

    /**
     * 修改成绩管理
     * 
     * @param dbScore 成绩管理
     * @return 结果
     */
    public int updateDbScore(DbScore dbScore);

    /**
     * 删除成绩管理
     * 
     * @param scoId 成绩管理主键
     * @return 结果
     */
    public int deleteDbScoreByScoId(Long scoId);

    /**
     * 批量删除成绩管理
     * 
     * @param scoIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDbScoreByScoIds(Long[] scoIds);
}
