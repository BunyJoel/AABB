package com.ruoyi.student.service;

import java.util.List;
import com.ruoyi.student.domain.DbMajor;

/**
 * 专业管理Service接口
 * 
 * @author AABB
 * @date 2023-09-09
 */
public interface IDbMajorService 
{

    String selectcount();

    /**
     * 查询专业管理
     * 
     * @param majId 专业管理主键
     * @return 专业管理
     */
    public DbMajor selectDbMajorByMajId(Long majId);

    /**
     * 查询专业管理列表
     * 
     * @param dbMajor 专业管理
     * @return 专业管理集合
     */
    public List<DbMajor> selectDbMajorList(DbMajor dbMajor);

    /**
     * 新增专业管理
     * 
     * @param dbMajor 专业管理
     * @return 结果
     */
    public int insertDbMajor(DbMajor dbMajor);

    /**
     * 修改专业管理
     * 
     * @param dbMajor 专业管理
     * @return 结果
     */
    public int updateDbMajor(DbMajor dbMajor);

    /**
     * 批量删除专业管理
     * 
     * @param majIds 需要删除的专业管理主键集合
     * @return 结果
     */
    public int deleteDbMajorByMajIds(Long[] majIds);

    /**
     * 删除专业管理信息
     * 
     * @param majId 专业管理主键
     * @return 结果
     */
    public int deleteDbMajorByMajId(Long majId);
}
