package com.ruoyi.student.service;

import java.util.List;
import com.ruoyi.student.domain.dbcollege;

/**
 * 学院Service接口
 * 
 * @author AABB
 * @date 2023-09-09
 */
public interface IdbcollegeService 
{


    String selectcount();

    /**
     * 查询学院
     * 
     * @param collId 学院主键
     * @return 学院
     */
    public dbcollege selectdbcollegeByCollId(Long collId);

    /**
     * 查询学院列表
     * 
     * @param dbcollege 学院
     * @return 学院集合
     */
    public List<dbcollege> selectdbcollegeList(dbcollege dbcollege);

    /**
     * 新增学院
     * 
     * @param dbcollege 学院
     * @return 结果
     */
    public int insertdbcollege(dbcollege dbcollege);

    /**
     * 修改学院
     * 
     * @param dbcollege 学院
     * @return 结果
     */
    public int updatedbcollege(dbcollege dbcollege);

    /**
     * 批量删除学院
     * 
     * @param collIds 需要删除的学院主键集合
     * @return 结果
     */
    public int deletedbcollegeByCollIds(Long[] collIds);

    /**
     * 删除学院信息
     * 
     * @param collId 学院主键
     * @return 结果
     */
    public int deletedbcollegeByCollId(Long collId);
}
