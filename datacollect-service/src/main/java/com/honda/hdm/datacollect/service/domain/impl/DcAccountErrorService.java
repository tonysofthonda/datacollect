package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.entity.DcAccountError;
import com.honda.hdm.datacollect.model.entity.DcFinancialStateXStatus;
import com.honda.hdm.datacollect.model.entity.dto.DcAccountErrorDto;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateXStatusDto;
import com.honda.hdm.datacollect.repository.DcAccountErrorRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DcAccountErrorService extends BaseDomainService<DcAccountError, Long> {

    @Autowired
    DcAccountErrorRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    @Autowired
    ModelConverter modelConverter;

    public List<DcAccountError> saveErrors(List<DcAccountError> errors, DcFinancialStateXStatus status){
        errors = errors.stream().map(error -> {
           error.setStatus(status);
           return repository.save(error);
        }).collect(Collectors.toList());
        return errors;
    }

    public List<DcAccountErrorDto> saveErrorsDto(List<DcAccountErrorDto> errors, DcFinancialStateXStatusDto status){
        return saveErrors(errors.stream().map(modelConverter::convertAccountError).collect(Collectors.toList()), modelConverter.convertFinancialStateXStatus(status)).stream().map(dtoConverter::convertAccountError).collect(Collectors.toList());
    }

    public List<DcAccountError> findLastErrorsSelected(Long financialStateId){
        return repository.findErrorsAfterLastSending(financialStateId);
    }

    public List<DcAccountErrorDto> findLastErrorsSelectedDto(Long financialStateId){
        return findLastErrorsSelected(financialStateId).stream().map(dtoConverter::convertAccountErrorSingle).collect(Collectors.toList());
    }
}
