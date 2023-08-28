package com.ruoyi.library.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.library.mapper.LibBookTypeMapper;
import com.ruoyi.library.domain.LibBookType;
import com.ruoyi.library.service.ILibBookTypeService;

/**
 * 图书类型Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-08-28
 */
@Service
public class LibBookTypeServiceImpl implements ILibBookTypeService 
{
    @Autowired
    private LibBookTypeMapper libBookTypeMapper;

    /**
     * 查询图书类型
     * 
     * @param typeId 图书类型主键
     * @return 图书类型
     */
    @Override
    public LibBookType selectLibBookTypeByTypeId(Long typeId)
    {
        return libBookTypeMapper.selectLibBookTypeByTypeId(typeId);
    }

    /**
     * 查询图书类型列表
     * 
     * @param libBookType 图书类型
     * @return 图书类型
     */
    @Override
    public List<LibBookType> selectLibBookTypeList(LibBookType libBookType)
    {
        return libBookTypeMapper.selectLibBookTypeList(libBookType);
    }

    /**
     * 新增图书类型
     * 
     * @param libBookType 图书类型
     * @return 结果
     */
    @Override
    public int insertLibBookType(LibBookType libBookType)
    {
        return libBookTypeMapper.insertLibBookType(libBookType);
    }

    /**
     * 修改图书类型
     * 
     * @param libBookType 图书类型
     * @return 结果
     */
    @Override
    public int updateLibBookType(LibBookType libBookType)
    {
        return libBookTypeMapper.updateLibBookType(libBookType);
    }

    /**
     * 批量删除图书类型
     * 
     * @param typeIds 需要删除的图书类型主键
     * @return 结果
     */
    @Override
    public int deleteLibBookTypeByTypeIds(Long[] typeIds)
    {
        return libBookTypeMapper.deleteLibBookTypeByTypeIds(typeIds);
    }

    /**
     * 删除图书类型信息
     * 
     * @param typeId 图书类型主键
     * @return 结果
     */
    @Override
    public int deleteLibBookTypeByTypeId(Long typeId)
    {
        return libBookTypeMapper.deleteLibBookTypeByTypeId(typeId);
    }
}
