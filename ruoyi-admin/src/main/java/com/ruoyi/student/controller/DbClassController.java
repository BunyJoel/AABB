package com.ruoyi.student.controller;

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
import com.ruoyi.student.domain.DbClass;
import com.ruoyi.student.service.IDbClassService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 班级管理Controller
 * 
 * @author AABB
 * @date 2023-09-09
 */
@RestController
@RequestMapping("/student/class")
public class DbClassController extends BaseController
{
    @Autowired
    private IDbClassService dbClassService;


    /**
     * 查询所有的班级
     */
    @PreAuthorize("@ss.hasPermi('student:class:list')")
    @GetMapping("/listall")
    public List<DbClass> listall()
    {
        DbClass dbClass = new DbClass();
        List<DbClass> list = dbClassService.selectDbClassList(dbClass);
        return list;
    }

    /**
     * 查询班级管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:class:list')")
    @GetMapping("/list")
    public TableDataInfo list(DbClass dbClass)
    {
        startPage();
        List<DbClass> list = dbClassService.selectDbClassList(dbClass);
        return getDataTable(list);
    }

    /**
     * 导出班级管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:class:export')")
    @Log(title = "班级管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DbClass dbClass)
    {
        List<DbClass> list = dbClassService.selectDbClassList(dbClass);
        ExcelUtil<DbClass> util = new ExcelUtil<DbClass>(DbClass.class);
        util.exportExcel(response, list, "班级管理数据");
    }

    /**
     * 获取班级管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('student:class:query')")
    @GetMapping(value = "/{clsId}")
    public AjaxResult getInfo(@PathVariable("clsId") Long clsId)
    {
        return success(dbClassService.selectDbClassByClsId(clsId));
    }

    /**
     * 新增班级管理
     */
    @PreAuthorize("@ss.hasPermi('student:class:add')")
    @Log(title = "班级管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DbClass dbClass)
    {
        return toAjax(dbClassService.insertDbClass(dbClass));
    }

    /**
     * 修改班级管理
     */
    @PreAuthorize("@ss.hasPermi('student:class:edit')")
    @Log(title = "班级管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DbClass dbClass)
    {
        return toAjax(dbClassService.updateDbClass(dbClass));
    }

    /**
     * 删除班级管理
     */
    @PreAuthorize("@ss.hasPermi('student:class:remove')")
    @Log(title = "班级管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{clsIds}")
    public AjaxResult remove(@PathVariable Long[] clsIds)
    {
        return toAjax(dbClassService.deleteDbClassByClsIds(clsIds));
    }
}
