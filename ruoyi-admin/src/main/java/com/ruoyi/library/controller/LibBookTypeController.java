package com.ruoyi.library.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.library.domain.LibBookType;
import com.ruoyi.library.service.ILibBookTypeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 图书类型Controller
 * 
 * @author ruoyi
 * @date 2023-08-28
 */
@RestController
@RequestMapping("/library/type")
public class LibBookTypeController extends BaseController
{
    @Autowired
    private ILibBookTypeService libBookTypeService;

    /**
     * 查询图书类型列表
     */
    @PreAuthorize("@ss.hasPermi('library:type:list')")
    @GetMapping("/list")
    public TableDataInfo list(LibBookType libBookType)
    {
        startPage();
        List<LibBookType> list = libBookTypeService.selectLibBookTypeList(libBookType);
        return getDataTable(list);
    }

    /**
     * 导出图书类型列表
     */
    @PreAuthorize("@ss.hasPermi('library:type:export')")
    @Log(title = "图书类型", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, LibBookType libBookType)
    {
        List<LibBookType> list = libBookTypeService.selectLibBookTypeList(libBookType);
        ExcelUtil<LibBookType> util = new ExcelUtil<LibBookType>(LibBookType.class);
        util.exportExcel(response, list, "图书类型数据");
    }

    /**
     * 获取图书类型详细信息
     */
    @PreAuthorize("@ss.hasPermi('library:type:query')")
    @GetMapping(value = "/{typeId}")
    public AjaxResult getInfo(@PathVariable("typeId") Long typeId)
    {
        return success(libBookTypeService.selectLibBookTypeByTypeId(typeId));
    }

    /**
     * 新增图书类型
     */
    @PreAuthorize("@ss.hasPermi('library:type:add')")
    @Log(title = "图书类型", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody LibBookType libBookType)
    {
        return toAjax(libBookTypeService.insertLibBookType(libBookType));
    }

    /**
     * 修改图书类型
     */
    @PreAuthorize("@ss.hasPermi('library:type:edit')")
    @Log(title = "图书类型", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody LibBookType libBookType)
    {
        return toAjax(libBookTypeService.updateLibBookType(libBookType));
    }

    /**
     * 删除图书类型
     */
    @PreAuthorize("@ss.hasPermi('library:type:remove')")
    @Log(title = "图书类型", businessType = BusinessType.DELETE)
	@DeleteMapping("/{typeIds}")
    public AjaxResult remove(@PathVariable Long[] typeIds)
    {
        return toAjax(libBookTypeService.deleteLibBookTypeByTypeIds(typeIds));
    }
}
