package com.ruoyi.library.mapper;

import java.util.List;
import com.ruoyi.library.domain.LibBookType;

/**
 * 图书类型Mapper接口
 * 
 * @author ruoyi
 * @date 2023-08-28
 */
public interface LibBookTypeMapper 
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
     * 删除图书类型
     * 
     * @param typeId 图书类型主键
     * @return 结果
     */
    public int deleteLibBookTypeByTypeId(Long typeId);

    /**
     * 批量删除图书类型
     * 
     * @param typeIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteLibBookTypeByTypeIds(Long[] typeIds);
}
