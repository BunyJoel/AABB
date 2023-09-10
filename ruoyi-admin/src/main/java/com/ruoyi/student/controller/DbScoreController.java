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
import com.ruoyi.student.domain.DbScore;
import com.ruoyi.student.service.IDbScoreService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 成绩管理Controller
 * 
 * @author AABB
 * @date 2023-09-10
 */
@RestController
@RequestMapping("/student/score")
public class DbScoreController extends BaseController
{
    @Autowired
    private IDbScoreService dbScoreService;

    /**
     * 查询成绩管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:score:list')")
    @GetMapping("/list")
    public TableDataInfo list(DbScore dbScore)
    {
        startPage();
        List<DbScore> list = dbScoreService.selectDbScoreList(dbScore);
        return getDataTable(list);
    }

    /**
     * 导出成绩管理列表
     */
    @PreAuthorize("@ss.hasPermi('student:score:export')")
    @Log(title = "成绩管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DbScore dbScore)
    {
        List<DbScore> list = dbScoreService.selectDbScoreList(dbScore);
        ExcelUtil<DbScore> util = new ExcelUtil<DbScore>(DbScore.class);
        util.exportExcel(response, list, "成绩管理数据");
    }

    /**
     * 获取成绩管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('student:score:query')")
    @GetMapping(value = "/{scoId}")
    public AjaxResult getInfo(@PathVariable("scoId") Long scoId)
    {
        return success(dbScoreService.selectDbScoreByScoId(scoId));
    }

    /**
     * 新增成绩管理
     */
    @PreAuthorize("@ss.hasPermi('student:score:add')")
    @Log(title = "成绩管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DbScore dbScore)
    {
        return toAjax(dbScoreService.insertDbScore(dbScore));
    }

    /**
     * 修改成绩管理
     */
    @PreAuthorize("@ss.hasPermi('student:score:edit')")
    @Log(title = "成绩管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DbScore dbScore)
    {
        return toAjax(dbScoreService.updateDbScore(dbScore));
    }

    /**
     * 删除成绩管理
     */
    @PreAuthorize("@ss.hasPermi('student:score:remove')")
    @Log(title = "成绩管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{scoIds}")
    public AjaxResult remove(@PathVariable Long[] scoIds)
    {
        return toAjax(dbScoreService.deleteDbScoreByScoIds(scoIds));
    }
}
