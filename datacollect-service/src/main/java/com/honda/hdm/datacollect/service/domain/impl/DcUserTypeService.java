package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.DcUserType;
import com.honda.hdm.datacollect.model.entity.dto.DcUserTypeDto;
import com.honda.hdm.datacollect.repository.DcUserTypeRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import com.honda.hdm.datacollect.service.domain.IDcUserTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class DcUserTypeService extends BaseDomainService<DcUserType,Long> implements IDcUserTypeService {

    @Autowired
    DcUserTypeRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    @Autowired
    ModelConverter modelConverter;

    @Override
    public DcUserType findByName(String name) {
        return repository.findByName(name);
    }

    @Override
    public DcUserTypeDto findByNameDto(String name) {
        return dtoConverter.convertUserType(findByName(name));
    }

    @Override
    public DcUserTypeDto saveDto(DcUserTypeDto dto) {
        return dtoConverter.convertUserType(save(modelConverter.convertUserType(dto)));
    }

    @Override
    public DcUserTypeDto updateDto(DcUserTypeDto userType, Long id) {
        DcUserTypeDto currentUserType = findOneDto(id);
        if(currentUserType == null){
            return null;
        }
        currentUserType.setName(userType.getName());
        return saveDto(currentUserType);
    }

    @Override
    public DcUserTypeDto findOneDto(Long id) {
        return dtoConverter.convertUserType(findOne(id));
    }

    @Override
    public Page<DcUserTypeDto> findAllDto(Pageable pageable) {
        return repository.findAll(pageable).map(dtoConverter::convertUserType);
    }

    @Override
    public Page<DcUserTypeDto> findAllByTermDto(String term, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public Page<DcUserTypeDto> findByRecordStatusIdDto(DcRecordStatusEnum dcRecordStatus, Pageable pageable) {
        return findAllDto(pageable);
    }
}
