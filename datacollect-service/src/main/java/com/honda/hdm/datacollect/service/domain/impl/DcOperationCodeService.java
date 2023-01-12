/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.DcOperationCode;
import com.honda.hdm.datacollect.model.entity.dto.DcOperationCodeDto;
import com.honda.hdm.datacollect.repository.DcOperationCodeRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.RecordStatusableService;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

/**
 *
 * @author VJC80439
 */
@Service
public class DcOperationCodeService extends RecordStatusableService<DcOperationCode, BigDecimal>{
    
    private static final Logger LOGGER = LogManager.getLogger(DcOperationCodeService.class);
    
    @Autowired
    private DcOperationCodeRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    @Autowired
    ModelConverter modelConverter;
    
    public DcOperationCode findOneByCode(String code) throws Exception {
        if (StringUtils.isEmpty(code))
            throw new Exception("Code is mandatory for searching a Operation");
        return repository.findOneByCodeIgnoreCase(code);
    }
    
    public List<DcOperationCode> findDcOperationCodes()  throws Exception {
    	return repository.findAll();
    }
    
    public DcOperationCode save(DcOperationCode dcOperationCode){
    	return repository.save(dcOperationCode);
    }
    
    public DcOperationCode findById(BigDecimal id) {
    	
    	return repository.findOne(id);
    	
    }

    @Override
    public DcOperationCode update(DcOperationCode obj, BigDecimal id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Page<DcOperationCodeDto> getOperationCodeList(Pageable pageable)  throws Exception {
    	return repository.findAll(pageable).map(dtoConverter::convertOperationCode);
    }
    
    public void saveOrUpdate(final DcOperationCodeDto dcOperationCodeDto) {
    	DcOperationCode operationCode = new DcOperationCode();
    	if(dcOperationCodeDto.getId() != null) {
    		operationCode = repository.findOne(dcOperationCodeDto.getId());
    	}
    	DcOperationCode operation = new DcOperationCode();
    	
    	if(operationCode == null) {
    		operation.setCreateTimestamp(new Date());
    	} else {
    		operation.setId(operationCode.getId());
    		operation.setUpdateTimestamp(new Date());
    	}
    	
    	operation.setCode(dcOperationCodeDto.getCode());
    	operation.setDescription(dcOperationCodeDto.getDescription());
    	operation.setServiceTypes(dcOperationCodeDto.getServiceTypes().stream().map(modelConverter::convertServiceType).collect(Collectors.toList()));
    	operation.setDcRecordStatusId(DcRecordStatusEnum.ENABLED);
    	
    	repository.save(operation);
    }
    
    public DcOperationCodeDto findOneDto(BigDecimal id) {
    	DcOperationCode operationCode = repository.findOne(id);
        if (operationCode == null) {
            return null;
        }
        return dtoConverter.convertOperationCode(operationCode);
    }
    
    public Page<DcOperationCodeDto> findAllByTermDto(String term, Pageable pageable) {
        Page<DcOperationCodeDto> paginatedDto = repository.findAllByTerm(term, pageable).map(dtoConverter::convertOperationCode);
        return paginatedDto;
    }
}