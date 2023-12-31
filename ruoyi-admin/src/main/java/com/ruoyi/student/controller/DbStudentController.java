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
import com.ruoyi.student.domain.DbStudent;
import com.ruoyi.student.service.IDbStudentService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生管理Controller
 * 
 * @author AABB
 * @date 2023-09-13
 */
@RestController
@RequestMapping("/student/student")
public class DbStudentController extends BaseController
{
    @Autowired
    private IDbStudentService dbStudentService;

    /**
     * 查询学生管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:student:list')")
    @GetMapping("/list")
    public TableDataInfo list(DbStudent dbStudent)
    {
        startPage();
        List<DbStudent> list = dbStudentService.selectDbStudentList(dbStudent);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('student:student:selectcount')")
    @GetMapping("/selectcount")
    public String selectcount()
    {

        return dbStudentService.selectcount();
    }

    /**
     * 导出学生管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:student:export')")
    @Log(title = "学生管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DbStudent dbStudent)
    {
        List<DbStudent> list = dbStudentService.selectDbStudentList(dbStudent);
        ExcelUtil<DbStudent> util = new ExcelUtil<DbStudent>(DbStudent.class);
        util.exportExcel(response, list, "学生管理数据");
    }

    /**
     * 获取学生管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('student:student:query')")
    @GetMapping(value = "/{stuId}")
    public AjaxResult getInfo(@PathVariable("stuId") Long stuId)
    {
        return success(dbStudentService.selectDbStudentByStuId(stuId));
    }

    /**
     * 新增学生管理
     */
    @PreAuthorize("@ss.hasPermi('student:student:add')")
    @Log(title = "学生管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DbStudent dbStudent)
    {
        return toAjax(dbStudentService.insertDbStudent(dbStudent));
    }

    /**
     * 修改学生管理
     */
    @PreAuthorize("@ss.hasPermi('student:student:edit')")
    @Log(title = "学生管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DbStudent dbStudent)
    {
        return toAjax(dbStudentService.updateDbStudent(dbStudent));
    }

    /**
     * 删除学生管理
     */
    @PreAuthorize("@ss.hasPermi('student:student:remove')")
    @Log(title = "学生管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{stuIds}")
    public AjaxResult remove(@PathVariable Long[] stuIds)
    {
        return toAjax(dbStudentService.deleteDbStudentByStuIds(stuIds));
    }
}
