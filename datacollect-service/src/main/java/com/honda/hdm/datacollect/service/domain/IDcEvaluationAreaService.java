package com.honda.hdm.datacollect.service.domain;

import com.honda.hdm.datacollect.model.entity.DcEvaluationArea;
import com.honda.hdm.datacollect.model.entity.dto.DcEvaluationAreaDto;

public interface IDcEvaluationAreaService extends IBaseDomainService<DcEvaluationArea, Long>,IDtoService<DcEvaluationAreaDto, Long>{

    public DcEvaluationArea findByName(String name);

    public DcEvaluationAreaDto findByNameDto(String name);
}
