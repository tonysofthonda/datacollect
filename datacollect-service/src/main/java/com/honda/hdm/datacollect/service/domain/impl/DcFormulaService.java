package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.entity.DcFormula;
import com.honda.hdm.datacollect.repository.DcFormulaRepository;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DcFormulaService extends BaseDomainService<DcFormula, Long> {

    @Autowired
    DcFormulaRepository repository;

    public List<DcFormula> findFormulaByTerm(Long accountValueTermId){
        return repository.findFormulaByTerm(accountValueTermId);
    }
}
