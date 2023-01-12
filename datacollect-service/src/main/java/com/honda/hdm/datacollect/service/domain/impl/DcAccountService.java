package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.*;
import com.honda.hdm.datacollect.model.entity.dto.DcAccountDto;
import com.honda.hdm.datacollect.model.entity.dto.DcAccountRelationshipDto;
import com.honda.hdm.datacollect.model.entity.dto.DcFormulaDto;
import com.honda.hdm.datacollect.model.entity.dto.DcFormulaTermDto;
import com.honda.hdm.datacollect.repository.DcAccountRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import com.honda.hdm.datacollect.service.domain.IDcAccountService;
import com.honda.hdm.datacollect.service.domain.IDcFinancialStateXAccountValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DcAccountService extends BaseDomainService<DcAccount, Long> implements IDcAccountService {

    @Autowired
    DcAccountRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    @Autowired
    ModelConverter modelConverter;

    @Autowired
    DcAccountValueService accountValueService;

    @Autowired
    DcFormulaService formulaService;

    @Autowired
    IDcFinancialStateXAccountValueService valueService;

    @Transactional
    @Override
        public void deleteCascade(DcAccount account) {
        if(account.getAccountValues() != null){


            account.getAccountValues().stream().forEach(acValue->{
                if (acValue.getFormula() != null){
                    acValue.setFormula(null);
                    acValue.getTermsOfFormula().clear();
                    accountValueService.save(acValue);
                }
                valueService.deleteByAccountValue(acValue.getId());
            });

            account.getAccountValues().clear();
            account = repository.save(account);
        }
        repository.deleteById(account.getId());
    }

    @Override
    public List<DcAccount> findModelAccounts() {
        return repository.findModelAccounts();
    }

    @Override
    public List<DcAccount> findByName(String name) {
        return repository.findByName(name);
    }

    @Override
    public List<DcAccountDto> findByNameDto(String name) {
        return findByName(name).stream().map(dtoConverter::convertAccount).collect(Collectors.toList());
    }

    @Override
    public DcAccountDto saveDto(DcAccountDto dto) {
        return dtoConverter.convertAccount(repository.save(modelConverter.convertAccount(dto)));
    }

    @Override
    public DcAccountDto updateDto(DcAccountDto dto, Long id) {
        DcAccount account = repository.findOne(id);
        if(account == null){
            return null;
        }
        account.setName(dto.getName());
        account.setAccountNumber(dto.getAccountNumber());
        account.setFormula(dto.getFormula());
        account.setPage(dto.getPage());
        account.setAccountParent(modelConverter.convertAccountRelationship(dto.getParent()));
        account.setAccountChilds(dto.getChildren().stream().map(modelConverter::convertAccountRelationship).collect(Collectors.toList()));
        return dtoConverter.convertAccount(repository.save(account));
    }

    @Override
    public DcAccountDto findOneDto(Long id) {
        DcAccount account = repository.findOne(id);
        if(account == null){
            return null;
        }
        return dtoConverter.convertAccount(account);
    }

    @Override
    public Page<DcAccountDto> findAllDto(Pageable pageable) {
        return repository.findAll(pageable).map(dtoConverter::convertAccount);
    }

    @Override
    public Page<DcAccountDto> findAllByTermDto(String term, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public List<DcAccount> findMainAccounts(String page) {
        return repository.findMainAccounts(page);
    }

    @Override
    public List<DcAccountDto> findMainAccountsDto(String page) {
        return findMainAccounts(page).stream().map(dtoConverter::convertAccount).collect(Collectors.toList());
    }

    @Override
    public List<DcAccountRelationship> findChildren(Long id) {
        return repository.findChildren(id);
    }

    @Override
    public List<DcAccountRelationshipDto> findChildrenDto(Long id) {
        return findChildren(id).stream().map(dtoConverter::convertAccountRelationship).collect(Collectors.toList());
    }

    @Override
    public DcAccountRelationship findParent(Long id) {
        return repository.findParent(id);
    }

    @Override
    public DcAccountRelationshipDto findParentDto(Long id) {
        return dtoConverter.convertAccountRelationship(findParent(id));
    }

    @Override
    public List<String> findAllPages() {
        return repository.findAllPages();
    }

    @Override
    public DcFormula findFormula(Long id) {
        DcAccount account = repository.findOne(id);
        if(account != null && !account.getFormula()){
            return null;
        }
        return repository.findFormula(id);
    }

    @Override
    public DcFormulaDto findFormulaDto(Long id) {
        DcFormula formula = findFormula(id);
        if (formula == null){
            return null;
        }
        return dtoConverter.convertFormula(formula);
    }

    @Override
    public List<DcFormulaTerm> findFormulaTerms(Long id) {
        return repository.findFormulaTerms(id);
    }

    @Override
    public List<DcFormulaTermDto> findFormulaTermsDto(Long id) {
        return findFormulaTerms(id).stream().map(dtoConverter::convertFormulaTerm).collect(Collectors.toList());
    }

    @Override
    public Page<DcAccountDto> findByRecordStatusIdDto(DcRecordStatusEnum dcRecordStatus, Pageable pageable) {
        return findAllDto(pageable);
    }
}
