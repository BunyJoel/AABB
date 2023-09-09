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
import com.ruoyi.student.domain.dbcollege;
import com.ruoyi.student.service.IdbcollegeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学院Controller
 * 
 * @author AABB
 * @date 2023-09-09
 */
@RestController
@RequestMapping("/student/college")
public class dbcollegeController extends BaseController
{
    @Autowired
    private IdbcollegeService dbcollegeService;


    /**
     * 查询所有的学院列表
     */
    @PreAuthorize("@ss.hasPermi('student:college:list')")
    @GetMapping("/listall")
    public List<dbcollege> listAll()
    {
        dbcollege dbcollege = new dbcollege();
        List<dbcollege> list = dbcollegeService.selectdbcollegeList(dbcollege);
        return list;
    }

    /**
     * 查询学院列表
     */
    @PreAuthorize("@ss.hasPermi('student:college:list')")
    @GetMapping("/list")
    public TableDataInfo list(dbcollege dbcollege)
    {
        startPage();
        List<dbcollege> list = dbcollegeService.selectdbcollegeList(dbcollege);
        return getDataTable(list);
    }

    /**
     * 导出学院列表
     */
    @PreAuthorize("@ss.hasPermi('student:college:export')")
    @Log(title = "学院", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, dbcollege dbcollege)
    {
        List<dbcollege> list = dbcollegeService.selectdbcollegeList(dbcollege);
        ExcelUtil<dbcollege> util = new ExcelUtil<dbcollege>(dbcollege.class);
        util.exportExcel(response, list, "学院数据");
    }

    /**
     * 获取学院详细信息
     */
    @PreAuthorize("@ss.hasPermi('student:college:query')")
    @GetMapping(value = "/{collId}")
    public AjaxResult getInfo(@PathVariable("collId") Long collId)
    {
        return success(dbcollegeService.selectdbcollegeByCollId(collId));
    }

    /**
     * 新增学院
     */
    @PreAuthorize("@ss.hasPermi('student:college:add')")
    @Log(title = "学院", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody dbcollege dbcollege)
    {
        return toAjax(dbcollegeService.insertdbcollege(dbcollege));
    }

    /**
     * 修改学院
     */
    @PreAuthorize("@ss.hasPermi('student:college:edit')")
    @Log(title = "学院", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody dbcollege dbcollege)
    {
        return toAjax(dbcollegeService.updatedbcollege(dbcollege));
    }

    /**
     * 删除学院
     */
    @PreAuthorize("@ss.hasPermi('student:college:remove')")
    @Log(title = "学院", businessType = BusinessType.DELETE)
	@DeleteMapping("/{collIds}")
    public AjaxResult remove(@PathVariable Long[] collIds)
    {
        return toAjax(dbcollegeService.deletedbcollegeByCollIds(collIds));
    }
}
