package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.entity.DcAccountValue;
import com.honda.hdm.datacollect.repository.DcAccountValueRepository;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DcAccountValueService extends BaseDomainService<DcAccountValue, Long> {

    @Autowired
    DcAccountValueRepository repository;

    public Integer countEditableAccountValues(){
        return  repository.countEditableAccountValues();
    }

    public List<DcAccountValue> findHistoricalPage4AccountValues(){
        return repository.findHistoricalPage4AccountValues();
    }

    public List<DcAccountValue> findHistoricalPage2and3AccountValues(){
        return repository.findHistoricalPage2and3AccountValues();
    }
}
