package com.ruoyi.student.mapper;

import com.ruoyi.student.pojo.Information;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DbCollIdMapper {
    List<Information> getAvgScore(@Param("collId") Long collId);
}
