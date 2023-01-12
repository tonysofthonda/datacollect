package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.DcAccountRelationship;
import com.honda.hdm.datacollect.model.entity.DcTypeAccountValue;
import com.honda.hdm.datacollect.model.entity.DcTypeAccountValueRelationship;
import com.honda.hdm.datacollect.model.entity.dto.DcAccountRelationshipDto;
import com.honda.hdm.datacollect.model.entity.dto.DcTypeAccountValueDto;
import com.honda.hdm.datacollect.model.entity.dto.DcTypeAccountValueRelationshipDto;
import com.honda.hdm.datacollect.repository.DcTypeAccountValueRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import com.honda.hdm.datacollect.service.domain.IDcTypeAccountValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DcTypeAccountValueService extends BaseDomainService<DcTypeAccountValue, Long> implements IDcTypeAccountValueService {

    @Autowired
    DcTypeAccountValueRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    @Autowired
    ModelConverter modelConverter;

    @Override
    public List<DcTypeAccountValue> findAll() {
        return repository.findAll();
    }

    @Override
    public List<DcTypeAccountValueDto> findAllDto() {
        return findAll().stream().map(dtoConverter::convertTypeAccountValue).collect(Collectors.toList());
    }

    @Override
    public List<DcTypeAccountValue> findTypeAccountByName(String name) {
        return repository.findByName(name);
    }

    @Override
    public List<DcTypeAccountValueDto> findTypeAccountByNameDto(String name) {
        return findTypeAccountByName(name).stream().map(dtoConverter::convertTypeAccountValue).collect(Collectors.toList());
    }

    @Override
    public DcTypeAccountValueDto saveDto(DcTypeAccountValueDto dto) {
        return dtoConverter.convertTypeAccountValue(save(modelConverter.convertTypeAccountValue(dto)));
    }

    @Override
    public DcTypeAccountValueDto updateDto(DcTypeAccountValueDto dto, Long id) {
        DcTypeAccountValue typeAccountValue = findOne(id);
        if(typeAccountValue == null){
            return null;
        }
        typeAccountValue.setName(dto.getName());
        return saveDto(dtoConverter.convertTypeAccountValue(typeAccountValue));
    }

    @Override
    public DcTypeAccountValueDto findOneDto(Long id) {
        DcTypeAccountValue typeAccountValue = findOne(id);
        if(typeAccountValue == null){
            return null;
        }
        return dtoConverter.convertTypeAccountValue(findOne(id));
    }

    @Override
    public Page<DcTypeAccountValueDto> findAllDto(Pageable pageable) {
        return findAll(pageable).map(dtoConverter::convertTypeAccountValue);
    }

    @Override
    public Page<DcTypeAccountValueDto> findAllByTermDto(String term, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public Page<DcTypeAccountValueDto> findByRecordStatusIdDto(DcRecordStatusEnum dcRecordStatus, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public List<DcTypeAccountValueRelationship> findChildren(Long id) {
        return repository.findChildren(id);
    }

    @Override
    public List<DcTypeAccountValueRelationshipDto> findChildrenDto(Long id) {
        return findChildren(id).stream().map(dtoConverter::convertTypeAccountValueRelationship).collect(Collectors.toList());
    }

    @Override
    public DcTypeAccountValueRelationship findParent(Long id) {
        return repository.findParent(id);
    }

    @Override
    public DcTypeAccountValueRelationshipDto findParentDto(Long id) {
        return dtoConverter.convertTypeAccountValueRelationship(findParent(id));
    }
}
