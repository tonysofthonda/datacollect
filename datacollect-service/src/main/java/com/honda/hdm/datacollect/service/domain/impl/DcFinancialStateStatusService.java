package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.DcFinancialStateStatus;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateStatusDto;
import com.honda.hdm.datacollect.repository.DcFinancialStateStatusRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import com.honda.hdm.datacollect.service.domain.IDcFinancialStateStatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DcFinancialStateStatusService extends BaseDomainService<DcFinancialStateStatus, Long> implements IDcFinancialStateStatusService {

    @Autowired
    DcFinancialStateStatusRepository repository;
    
    @Autowired
    DtoConverter dtoConverter;
    
    @Autowired
    ModelConverter modelConverter;
    
    @Override
    public DcFinancialStateStatusDto saveDto(DcFinancialStateStatusDto dto) {
        return dtoConverter.convertFinancialStateStatus(save(modelConverter.convertFinancialStateStatus(dto)));
    }

    @Override
    public DcFinancialStateStatusDto updateDto(DcFinancialStateStatusDto dto, Long id) {
        DcFinancialStateStatus status = findOne(id);
        if(status == null){
            return null;
        }
        status.setName(dto.getName());
        status.setDescription(dto.getDescription());
        return saveDto(dtoConverter.convertFinancialStateStatus(status));
    }

    @Override
    public DcFinancialStateStatusDto findOneDto(Long id) {
        return dtoConverter.convertFinancialStateStatus(findOne(id));
    }

    @Override
    public DcFinancialStateStatus findByName(String name) {
        return repository.findByName(name);
    }

    @Override
    public DcFinancialStateStatusDto findByNameDto(String name) {
        return dtoConverter.convertFinancialStateStatus(findByName(name));
    }

    @Override
    public List<DcFinancialStateStatusDto> findAllDto() {
        return findAll().stream().map(dtoConverter::convertFinancialStateStatus).collect(Collectors.toList());
    }

    @Override
    public Page<DcFinancialStateStatusDto> findAllDto(Pageable pageable) {
        return findAll(pageable).map(dtoConverter::convertFinancialStateStatus);
    }

    @Override
    public Page<DcFinancialStateStatusDto> findAllByTermDto(String term, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public Page<DcFinancialStateStatusDto> findByRecordStatusIdDto(DcRecordStatusEnum dcRecordStatus, Pageable pageable) {
        return findAllDto(pageable);
    }
}
