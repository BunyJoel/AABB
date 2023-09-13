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
import com.ruoyi.student.domain.DbTeacher;
import com.ruoyi.student.service.IDbTeacherService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 教师管理Controller
 * 
 * @author AABB
 * @date 2023-09-09
 */
@RestController
@RequestMapping("/student/teacher")
public class DbTeacherController extends BaseController
{
    @Autowired
    private IDbTeacherService dbTeacherService;

    @PreAuthorize("@ss.hasPermi('student:teacher:selectcount')")
    @GetMapping("/selectcount")
    public String selectcount()
    {
        return dbTeacherService.selectcount();
    }

    /**
     * 查询所有教师
     */
    @PreAuthorize("@ss.hasPermi('student:teacher:list')")
    @GetMapping("/listall")
    public List<DbTeacher> listAll()
    {
        DbTeacher dbTeacher = new DbTeacher();
        List<DbTeacher> list = dbTeacherService.selectDbTeacherList(dbTeacher);
        return list;
    }

    /**
     * 查询教师管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:teacher:list')")
    @GetMapping("/list")
    public TableDataInfo list(DbTeacher dbTeacher)
    {
        startPage();
        List<DbTeacher> list = dbTeacherService.selectDbTeacherList(dbTeacher);
        return getDataTable(list);
    }

    /**
     * 导出教师管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:teacher:export')")
    @Log(title = "教师管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DbTeacher dbTeacher)
    {
        List<DbTeacher> list = dbTeacherService.selectDbTeacherList(dbTeacher);
        ExcelUtil<DbTeacher> util = new ExcelUtil<DbTeacher>(DbTeacher.class);
        util.exportExcel(response, list, "教师管理数据");
    }

    /**
     * 获取教师管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('student:teacher:query')")
    @GetMapping(value = "/{teaId}")
    public AjaxResult getInfo(@PathVariable("teaId") Long teaId)
    {
        return success(dbTeacherService.selectDbTeacherByTeaId(teaId));
    }

    /**
     * 新增教师管理
     */
    @PreAuthorize("@ss.hasPermi('student:teacher:add')")
    @Log(title = "教师管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DbTeacher dbTeacher)
    {
        return toAjax(dbTeacherService.insertDbTeacher(dbTeacher));
    }

    /**
     * 修改教师管理
     */
    @PreAuthorize("@ss.hasPermi('student:teacher:edit')")
    @Log(title = "教师管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DbTeacher dbTeacher)
    {
        return toAjax(dbTeacherService.updateDbTeacher(dbTeacher));
    }

    /**
     * 删除教师管理
     */
    @PreAuthorize("@ss.hasPermi('student:teacher:remove')")
    @Log(title = "教师管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{teaIds}")
    public AjaxResult remove(@PathVariable Long[] teaIds)
    {
        return toAjax(dbTeacherService.deleteDbTeacherByTeaIds(teaIds));
    }
}
