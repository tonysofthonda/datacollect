package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.DcEvaluationArea;
import com.honda.hdm.datacollect.model.entity.dto.DcEvaluationAreaDto;
import com.honda.hdm.datacollect.model.entity.dto.DcUserTypeDto;
import com.honda.hdm.datacollect.repository.DcEvaluationAreaRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import com.honda.hdm.datacollect.service.domain.IDcEvaluationAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class DcEvaluationAreaService extends BaseDomainService<DcEvaluationArea,Long> implements IDcEvaluationAreaService {

    @Autowired
    DcEvaluationAreaRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    @Autowired
    ModelConverter modelConverter;

    @Override
    public DcEvaluationArea findByName(String name) {
        return repository.findByName(name);
    }

    @Override
    public DcEvaluationAreaDto findByNameDto(String name) {
        return dtoConverter.convertEvaluationArea(findByName(name));
    }

    @Override
    public DcEvaluationAreaDto saveDto(DcEvaluationAreaDto dto) {
        return dtoConverter.convertEvaluationArea(save(modelConverter.convertEvaluationArea(dto)));
    }

    @Override
    public DcEvaluationAreaDto updateDto(DcEvaluationAreaDto evaluationArea, Long id) {
        DcEvaluationAreaDto currentEvaluationArea = findOneDto(id);
        if(currentEvaluationArea == null){
            return null;
        }
        currentEvaluationArea.setName(evaluationArea.getName());
        return currentEvaluationArea;
    }

    @Override
    public DcEvaluationAreaDto findOneDto(Long id) {
        return dtoConverter.convertEvaluationArea(findOne(id));
    }

    @Override
    public Page<DcEvaluationAreaDto> findAllDto(Pageable pageable) {
        return findAll(pageable).map(dtoConverter::convertEvaluationArea);
    }

    @Override
    public Page<DcEvaluationAreaDto> findAllByTermDto(String term, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public Page<DcEvaluationAreaDto> findByRecordStatusIdDto(DcRecordStatusEnum dcRecordStatus, Pageable pageable) {
        return findAllDto(pageable);
    }
}
