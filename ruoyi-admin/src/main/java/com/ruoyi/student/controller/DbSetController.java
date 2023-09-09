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
import com.ruoyi.student.domain.DbSet;
import com.ruoyi.student.service.IDbSetService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 开发管理Controller
 * 
 * @author AABB
 * @date 2023-09-09
 */
@RestController
@RequestMapping("/student/set")
public class DbSetController extends BaseController
{
    @Autowired
    private IDbSetService dbSetService;

    /**
     * 查询开发管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:set:list')")
    @GetMapping("/list")
    public TableDataInfo list(DbSet dbSet)
    {
        startPage();
        List<DbSet> list = dbSetService.selectDbSetList(dbSet);
        return getDataTable(list);
    }

    /**
     * 导出开发管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:set:export')")
    @Log(title = "开发管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DbSet dbSet)
    {
        List<DbSet> list = dbSetService.selectDbSetList(dbSet);
        ExcelUtil<DbSet> util = new ExcelUtil<DbSet>(DbSet.class);
        util.exportExcel(response, list, "开发管理数据");
    }

    /**
     * 获取开发管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('student:set:query')")
    @GetMapping(value = "/{setId}")
    public AjaxResult getInfo(@PathVariable("setId") Long setId)
    {
        return success(dbSetService.selectDbSetBySetId(setId));
    }

    /**
     * 新增开发管理
     */
    @PreAuthorize("@ss.hasPermi('student:set:add')")
    @Log(title = "开发管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DbSet dbSet)
    {
        return toAjax(dbSetService.insertDbSet(dbSet));
    }

    /**
     * 修改开发管理
     */
    @PreAuthorize("@ss.hasPermi('student:set:edit')")
    @Log(title = "开发管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DbSet dbSet)
    {
        return toAjax(dbSetService.updateDbSet(dbSet));
    }

    /**
     * 删除开发管理
     */
    @PreAuthorize("@ss.hasPermi('student:set:remove')")
    @Log(title = "开发管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{setIds}")
    public AjaxResult remove(@PathVariable Long[] setIds)
    {
        return toAjax(dbSetService.deleteDbSetBySetIds(setIds));
    }
}
