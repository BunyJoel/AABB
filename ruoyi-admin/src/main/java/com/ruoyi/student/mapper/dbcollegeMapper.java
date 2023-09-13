package com.ruoyi.student.mapper;

import java.util.List;
import com.ruoyi.student.domain.dbcollege;

/**
 * 学院Mapper接口
 * 
 * @author AABB
 * @date 2023-09-09
 */
public interface dbcollegeMapper 
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
     * 删除学院
     * 
     * @param collId 学院主键
     * @return 结果
     */
    public int deletedbcollegeByCollId(Long collId);

    /**
     * 批量删除学院
     * 
     * @param collIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deletedbcollegeByCollIds(Long[] collIds);
}
