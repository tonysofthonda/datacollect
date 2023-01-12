/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.DcFacility;
import com.honda.hdm.datacollect.model.entity.dto.DcFacilityDto;
import com.honda.hdm.datacollect.repository.DcFacilityRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.IDcFacilityService;
import com.honda.hdm.datacollect.service.domain.RecordStatusableService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author VJC80439
 */
@Service
public class DcFacilityService extends RecordStatusableService<DcFacility, Long> implements IDcFacilityService {

    private static final Logger LOGGER = LogManager.getLogger(DcFacilityService.class);

    @Autowired
    DcFacilityRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    @Autowired
    ModelConverter modelConverter;

    public DcFacility findIfExistByConcept(String concept) {
        return repository.findIfExistByConcept(concept);
    }

    @Override
    public DcFacility update(DcFacility obj, Long id) {
        DcFacility currentFacility = repository.findOne(id);
        if (currentFacility == null) {
            return null;
        }
        currentFacility.setConcept(obj.getConcept());
        currentFacility.setDescription(obj.getDescription());
        return repository.save(currentFacility);
    }

    @Override
    public DcFacilityDto saveDto(DcFacilityDto dto) {
        DcFacility facility = modelConverter.convertFacility(dto);
        DcFacility newFacility = save(facility);
        return dtoConverter.convertFacility(newFacility);
    }

    @Override
    public DcFacilityDto updateDto(DcFacilityDto dto, Long id) {
        DcFacility facility = update(modelConverter.convertFacility(dto), id);
        if (facility == null) {
            return null;
        }
        return dtoConverter.convertFacility(facility);
    }

    @Override
    public DcFacilityDto findOneDto(Long id) {
        DcFacility facility = findOne(id);
        if (facility == null) {
            return null;
        }
        return dtoConverter.convertFacility(facility);
    }

    @Override
    public List<DcFacilityDto> findAllDto() {
        return findAll().stream().map(dtoConverter::convertFacility).collect(Collectors.toList());
    }

    @Override
    public Page<DcFacilityDto> findAllDto(Pageable pageable) {
        Page<DcFacilityDto> paginatedDto = repository.findAll(pageable).map(dtoConverter::convertFacility);
        return paginatedDto;
    }

    @Override
    public Page<DcFacilityDto> findAllByTermDto(String term, Pageable pageable) {
        Page<DcFacilityDto> paginatedDto = repository.findAllByTerm(term, pageable).map(dtoConverter::convertFacility);
        return paginatedDto;
    }

    @Override
    public Page<DcFacilityDto> findByRecordStatusIdDto(DcRecordStatusEnum dcRecordStatus, Pageable pageable) {
        Page<DcFacilityDto> paginatedDto = findByRecordStatusId(dcRecordStatus, pageable).map(dtoConverter::convertFacility);
        return paginatedDto;
    }
}
