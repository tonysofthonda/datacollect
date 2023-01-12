package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.entity.DcFinancialStateXStatus;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateXStatusDto;
import com.honda.hdm.datacollect.repository.DcFinancialStateXStatusRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DcFinancialStateXStatusService extends BaseDomainService<DcFinancialStateXStatus, Long>  {
    @Autowired
    DcFinancialStateXStatusRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    public List<DcFinancialStateXStatus> findStatusAfterSending(Long financialStateId){
        return repository.findStatusAfterSending(financialStateId);
    }

    public List<DcFinancialStateXStatusDto> findStatusAfterSendingDto(Long financialStateId){
        return findStatusAfterSending(financialStateId).stream().map(dtoConverter::convertFinancialStateXStatus).collect(Collectors.toList());
    }

}
