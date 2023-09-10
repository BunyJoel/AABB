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
import com.ruoyi.student.domain.DbCourse;
import com.ruoyi.student.service.IDbCourseService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 课程管理Controller
 * 
 * @author AABB
 * @date 2023-09-09
 */
@RestController
@RequestMapping("/student/course")
public class DbCourseController extends BaseController
{
    @Autowired
    private IDbCourseService dbCourseService;


    /**
     * 查询所有的课程
     */
    @PreAuthorize("@ss.hasPermi('student:course:list')")
    @GetMapping("/listall")
    public List<DbCourse> listAll()
    {
        DbCourse dbCourse = new DbCourse();
        List<DbCourse> list = dbCourseService.selectDbCourseList(dbCourse);
        return list;
    }

    /**
     * 查询课程管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:course:list')")
    @GetMapping("/list")
    public TableDataInfo list(DbCourse dbCourse)
    {
        startPage();
        List<DbCourse> list = dbCourseService.selectDbCourseList(dbCourse);
        return getDataTable(list);
    }

    /**
     * 导出课程管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:course:export')")
    @Log(title = "课程管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DbCourse dbCourse)
    {
        List<DbCourse> list = dbCourseService.selectDbCourseList(dbCourse);
        ExcelUtil<DbCourse> util = new ExcelUtil<DbCourse>(DbCourse.class);
        util.exportExcel(response, list, "课程管理数据");
    }

    /**
     * 获取课程管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('student:course:query')")
    @GetMapping(value = "/{couId}")
    public AjaxResult getInfo(@PathVariable("couId") Long couId)
    {
        return success(dbCourseService.selectDbCourseByCouId(couId));
    }

    /**
     * 新增课程管理
     */
    @PreAuthorize("@ss.hasPermi('student:course:add')")
    @Log(title = "课程管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DbCourse dbCourse)
    {
        return toAjax(dbCourseService.insertDbCourse(dbCourse));
    }

    /**
     * 修改课程管理
     */
    @PreAuthorize("@ss.hasPermi('student:course:edit')")
    @Log(title = "课程管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DbCourse dbCourse)
    {
        return toAjax(dbCourseService.updateDbCourse(dbCourse));
    }

    /**
     * 删除课程管理
     */
    @PreAuthorize("@ss.hasPermi('student:course:remove')")
    @Log(title = "课程管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{couIds}")
    public AjaxResult remove(@PathVariable Long[] couIds)
    {
        return toAjax(dbCourseService.deleteDbCourseByCouIds(couIds));
    }
}
