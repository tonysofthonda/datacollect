package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcEvaluationArea;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DcEvaluationAreaRepository extends IBaseRepository<DcEvaluationArea, Long> {

    public DcEvaluationArea findByName(String name);
}
