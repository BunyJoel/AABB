package com.ruoyi.student.service;

import com.ruoyi.student.domain.dbcollId;
import com.ruoyi.student.pojo.Information;

import java.util.List;

public interface IDbcollId {
    public List<Information> getAvgScore(dbcollId dbcollId);
}
