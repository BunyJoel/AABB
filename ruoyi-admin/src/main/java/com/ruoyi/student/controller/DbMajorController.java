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
import com.ruoyi.student.domain.DbMajor;
import com.ruoyi.student.service.IDbMajorService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 专业管理Controller
 * 
 * @author AABB
 * @date 2023-09-09
 */
@RestController
@RequestMapping("/student/major")
public class DbMajorController extends BaseController
{
    @Autowired
    private IDbMajorService dbMajorService;


    @PreAuthorize("@ss.hasPermi('student:major:selectcount')")
    @GetMapping("/selectcount")
    public String selectcount()
    {
        return dbMajorService.selectcount();
    }

    /**
     * 查询所有的列表
     */
    @PreAuthorize("@ss.hasPermi('student:major:list')")
    @GetMapping("/listall")
    public List<DbMajor> listAll()
    {
        DbMajor dbMajor = new DbMajor();
        List<DbMajor> list = dbMajorService.selectDbMajorList(dbMajor);
        return list;
    }


    /**
     * 查询专业管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:major:list')")
    @GetMapping("/list")
    public TableDataInfo list(DbMajor dbMajor)
    {
        startPage();
        List<DbMajor> list = dbMajorService.selectDbMajorList(dbMajor);
        return getDataTable(list);
    }

    /**
     * 导出专业管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:major:export')")
    @Log(title = "专业管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DbMajor dbMajor)
    {
        List<DbMajor> list = dbMajorService.selectDbMajorList(dbMajor);
        ExcelUtil<DbMajor> util = new ExcelUtil<DbMajor>(DbMajor.class);
        util.exportExcel(response, list, "专业管理数据");
    }

    /**
     * 获取专业管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('student:major:query')")
    @GetMapping(value = "/{majId}")
    public AjaxResult getInfo(@PathVariable("majId") Long majId)
    {
        return success(dbMajorService.selectDbMajorByMajId(majId));
    }

    /**
     * 新增专业管理
     */
    @PreAuthorize("@ss.hasPermi('student:major:add')")
    @Log(title = "专业管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DbMajor dbMajor)
    {
        return toAjax(dbMajorService.insertDbMajor(dbMajor));
    }

    /**
     * 修改专业管理
     */
    @PreAuthorize("@ss.hasPermi('student:major:edit')")
    @Log(title = "专业管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DbMajor dbMajor)
    {
        return toAjax(dbMajorService.updateDbMajor(dbMajor));
    }

    /**
     * 删除专业管理
     */
    @PreAuthorize("@ss.hasPermi('student:major:remove')")
    @Log(title = "专业管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{majIds}")
    public AjaxResult remove(@PathVariable Long[] majIds)
    {
        return toAjax(dbMajorService.deleteDbMajorByMajIds(majIds));
    }
}
