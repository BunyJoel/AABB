package com.ruoyi.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.student.mapper.dbcollegeMapper;
import com.ruoyi.student.domain.dbcollege;
import com.ruoyi.student.service.IdbcollegeService;

/**
 * 学院Service业务层处理
 * 
 * @author AABB
 * @date 2023-09-09
 */
@Service
public class dbcollegeServiceImpl implements IdbcollegeService 
{
    @Autowired
    private dbcollegeMapper dbcollegeMapper;

    /**
     * 查询学院
     * 
     * @param collId 学院主键
     * @return 学院
     */
    @Override
    public dbcollege selectdbcollegeByCollId(Long collId)
    {
        return dbcollegeMapper.selectdbcollegeByCollId(collId);
    }

    /**
     * 查询学院列表
     * 
     * @param dbcollege 学院
     * @return 学院
     */
    @Override
    public List<dbcollege> selectdbcollegeList(dbcollege dbcollege)
    {
        return dbcollegeMapper.selectdbcollegeList(dbcollege);
    }

    /**
     * 新增学院
     * 
     * @param dbcollege 学院
     * @return 结果
     */
    @Override
    public int insertdbcollege(dbcollege dbcollege)
    {
        return dbcollegeMapper.insertdbcollege(dbcollege);
    }

    /**
     * 修改学院
     * 
     * @param dbcollege 学院
     * @return 结果
     */
    @Override
    public int updatedbcollege(dbcollege dbcollege)
    {
        return dbcollegeMapper.updatedbcollege(dbcollege);
    }

    /**
     * 批量删除学院
     * 
     * @param collIds 需要删除的学院主键
     * @return 结果
     */
    @Override
    public int deletedbcollegeByCollIds(Long[] collIds)
    {
        return dbcollegeMapper.deletedbcollegeByCollIds(collIds);
    }

    /**
     * 删除学院信息
     * 
     * @param collId 学院主键
     * @return 结果
     */
    @Override
    public int deletedbcollegeByCollId(Long collId)
    {
        return dbcollegeMapper.deletedbcollegeByCollId(collId);
    }
}
