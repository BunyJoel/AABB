package com.ruoyi.library.service;

import java.util.List;
import com.ruoyi.library.domain.LibBookType;

/**
 * 图书类型Service接口
 * 
 * @author ruoyi
 * @date 2023-08-28
 */
public interface ILibBookTypeService 
{
    /**
     * 查询图书类型
     * 
     * @param typeId 图书类型主键
     * @return 图书类型
     */
    public LibBookType selectLibBookTypeByTypeId(Long typeId);

    /**
     * 查询图书类型列表
     * 
     * @param libBookType 图书类型
     * @return 图书类型集合
     */
    public List<LibBookType> selectLibBookTypeList(LibBookType libBookType);

    /**
     * 新增图书类型
     * 
     * @param libBookType 图书类型
     * @return 结果
     */
    public int insertLibBookType(LibBookType libBookType);

    /**
     * 修改图书类型
     * 
     * @param libBookType 图书类型
     * @return 结果
     */
    public int updateLibBookType(LibBookType libBookType);

    /**
     * 批量删除图书类型
     * 
     * @param typeIds 需要删除的图书类型主键集合
     * @return 结果
     */
    public int deleteLibBookTypeByTypeIds(Long[] typeIds);

    /**
     * 删除图书类型信息
     * 
     * @param typeId 图书类型主键
     * @return 结果
     */
    public int deleteLibBookTypeByTypeId(Long typeId);
}
