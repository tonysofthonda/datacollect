/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.*;
import com.honda.hdm.datacollect.model.entity.dto.DcModelDto;
import com.honda.hdm.datacollect.model.enums.AccountComponentEnum;
import com.honda.hdm.datacollect.model.enums.StaticAccountName;
import com.honda.hdm.datacollect.model.enums.TypeAccountValueEnum;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.*;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.honda.hdm.datacollect.repository.DcModelRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/**
 * @author VJC80439
 */
@Service
public class DcModelService extends RecordStatusableService<DcModel, Long> implements IDcModelService {

    private static final Logger LOGGER = LogManager.getLogger(DcModelService.class);

    @Autowired
    DcModelRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    @Autowired
    ModelConverter modelConverter;

    @Autowired
    IDcAccountService accountService;

    @Autowired
    IDcTypeAccountValueService typeAccountValueService;

    @Autowired
    IDcAccountComponentService accountComponentService;

    @Autowired
    DcAccountValueService accountValueService;

    @Autowired
    DcFormulaService formulaService;

    @Autowired
    DcAccountRelationshipService accountRelationshipService;

    @Override
    public <S extends DcModel> S save(S model) {
        if(model.getAccount() != null){
            model.setAccount(saveModelAccount(model.getAccount()));
        }
        return repository.save(model);
    }

    @Override
    public DcModel findOneByCode(String dcModelCode) throws Exception {
        if (StringUtils.isEmpty(dcModelCode)) {
            throw new Exception("Code is mandatory for searching DcModel into database");
        }
        return repository.findOneByCodeIgnoreCase(dcModelCode);
    }

    @Override
    public DcModel findOneByCodeAndYear(String code, String year) {
        return repository.findFirstByCodeAndYear(code, year);
    }

    @Override
    public DcModel update(DcModel obj, Long id) {
        DcModel currentModel = repository.findOne(id);
        if (currentModel == null) {
            return null;
        }
        currentModel.setDcSystemServices(new ArrayList<>());
        repository.save(currentModel);

        currentModel.setCode(obj.getCode());
        currentModel.setYear(obj.getYear());
        currentModel.setName(obj.getName());
        currentModel.setDescription(obj.getDescription());

        Boolean forFinantialSystem = obj.getDcSystemServices().stream().anyMatch(sy -> sy.getName().equals("Informacion Financiera"));
        if(currentModel.getAccount() != null && obj.getAccount() != null && forFinantialSystem){
            currentModel.setAccount(updateModelAccount(obj.getAccount()));
        }else if(currentModel.getAccount() == null && obj.getAccount() != null && forFinantialSystem){
            currentModel.setAccount(saveModelAccount(obj.getAccount()));
        }else if(currentModel.getAccount() != null && (obj.getAccount() == null || !forFinantialSystem)){
            accountService.deleteCascade(currentModel.getAccount());
            currentModel.setAccount(null);
        }
        currentModel.setDcSystemServices(obj.getDcSystemServices());
        return repository.save(currentModel);
    }

    @Override
    public DcModelDto findOneByCodeDto(String dcModelCode) {
        try {
            return dtoConverter.convertModel(findOneByCode(dcModelCode));
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public DcModelDto findOneByCodeAndYearDto(String code, Integer year) {
        DcModel model = findOneByCodeAndYear(code, String.valueOf(year));
        if (model == null) {
            return null;
        }
        return dtoConverter.convertModel(model);
    }

    @Override
    public DcModelDto saveDto(DcModelDto dto) {
        return dtoConverter.convertModel(save(modelConverter.convertModel(dto)));
    }

    @Override
    public DcModelDto updateDto(DcModelDto dto, Long id) {
        DcModel model = update(modelConverter.convertModel(dto), id);
        if (model == null) {
            return null;
        }
        return dtoConverter.convertModel(model);
    }

    @Override
    public DcModelDto findOneDto(Long id) {
        DcModel model = findOne(id);
        if (model == null) {
            return null;
        }
        return dtoConverter.convertModel(model);
    }

    @Override
    public Page<DcModelDto> findAllDto(Pageable pageable) {
        return findAll(pageable).map(dtoConverter::convertModel);
    }

    @Override
    public Page<DcModelDto> findAllByTermDto(String term, Pageable pageable) {
        return repository.findAllByTerm(term, pageable).map(dtoConverter::convertModel);
    }

    @Override
    public Page<DcModelDto> findByRecordStatusIdDto(DcRecordStatusEnum dcRecordStatus, Pageable pageable) {
        return findByRecordStatusId(dcRecordStatus, pageable).map(dtoConverter::convertModel);
    }

    @Override
    public DcModelDto changeStatus(Boolean status, Long id) {
        DcModel model = findOne(id);
        if (model == null) {
            return null;
        }
        model.setDcRecordStatusId(status ? DcRecordStatusEnum.ENABLED: DcRecordStatusEnum.DISABLED);
        return dtoConverter.convertModel(repository.save(model));
    }

    @Override
    public void delete(Long id) {
        DcModel model = findOne(id);
        if(model != null){
            Boolean forFinancialSystem = model.getDcSystemServices().stream().anyMatch(sy -> sy.getName().equals("Informacion Financiera"));
            if(forFinancialSystem && model.getAccount() != null){
                accountService.deleteCascade(model.getAccount());
                updateHondaNewCarRetailFormulas();
            }
        }
        super.delete(id);
    }

    private DcAccount updateModelAccount(DcAccount account){
        DcAccount currentAccount = accountService.findOne(account.getId());
        currentAccount.setAccountNumber(account.getAccountNumber());
        return accountService.save(currentAccount);
    }

    private DcAccount saveModelAccount(DcAccount account) {
        account.setPage("4");
        account.setFormula(true);
        account.setComponent(accountComponentService.findAccountComponentByName(AccountComponentEnum.GROSS_PROFIT_ANALYSIS.toString()).stream().findFirst().orElse(null));
        DcAccount newAccount = modelConverter.convertAccount(accountService.saveDto(dtoConverter.convertAccount(account)));
        try {
            modelAccountValues(newAccount, TypeAccountValueEnum.CURRENT_MONTH.toString());
            modelAccountValues(newAccount, TypeAccountValueEnum.FROM_YEAR_TO_DATE.toString());

            DcAccount parentAccount = accountService.findByName(StaticAccountName.MODELS.toString()).stream().findFirst().orElse(null);
            DcAccountRelationship relationship = new DcAccountRelationship();
            relationship.setAccountParent(parentAccount);
            relationship.setAccountChild(newAccount);
            relationship.setAccountChildId(newAccount.getId());
            relationship.setOrder(parentAccount.getAccountChilds() != null ? parentAccount.getAccountChilds().size() + 1 : 1);
            accountRelationshipService.save(relationship);
            newAccount = modelConverter.convertAccount(accountService.saveDto(dtoConverter.convertAccount(newAccount)));
        }catch (Exception e){
            e.printStackTrace();
        }
        return newAccount;
    }

    private List<DcAccountValue> modelAccountValues(DcAccount account, String monthOrYear){
        List<DcTypeAccountValue> children = typeAccountValueService.findTypeAccountByName(monthOrYear)
                .stream().findFirst().orElse(null)
                .getTypeAccountChilds().stream().map(rel->rel.getTypeAccountChild()).collect(Collectors.toList());

        DcTypeAccountValue unitsType = children.stream().filter(typeAccount-> typeAccount.getName().equals(TypeAccountValueEnum.UNITS.toString())).findFirst().orElse(null);
        DcTypeAccountValue salesType = children.stream().filter(typeAccount-> typeAccount.getName().equals(TypeAccountValueEnum.SALES.toString())).findFirst().orElse(null);
        DcTypeAccountValue grossProfitType = children.stream().filter(typeAccount-> typeAccount.getName().equals(TypeAccountValueEnum.GROSS_PROFIT.toString())).findFirst().orElse(null);
        DcTypeAccountValue percentageSoldUnitsType = children.stream().filter(typeAccount-> typeAccount.getName().equals(TypeAccountValueEnum.PERCENTAGE_SOLD_UNITS.toString())).findFirst().orElse(null);

        DcAccountValue units = accountValueService.save(new DcAccountValue(account, unitsType));
        DcAccountValue sales = accountValueService.save(new DcAccountValue(account, salesType));
        DcAccountValue grossProfit = accountValueService.save(new DcAccountValue(account, grossProfitType));
        DcAccountValue percentageSoldUnits = accountValueService.save(new DcAccountValue(account, percentageSoldUnitsType));

        DcFormula percentageMonthFormula = new DcFormula();
        percentageMonthFormula.setOwnerAccountValue(percentageSoldUnits);
        percentageMonthFormula.setFormula("?*100/?");
        percentageMonthFormula.setTerms(Arrays.asList(new DcFormulaTerm(percentageMonthFormula, grossProfit, 1),new DcFormulaTerm(percentageMonthFormula, sales, 2)));
        formulaService.save(percentageMonthFormula);
        return Arrays.asList(units,sales,grossProfit,percentageSoldUnits);
    }

    @Transactional(propagation = Propagation.REQUIRES_NEW)
    @Override
    public void updateHondaNewCarRetailFormulas(){
        DcAccount hondaNewCarRetail = accountService.findByName(StaticAccountName.HONDA_NEW_CAR_RETAIL.toString()).stream().findFirst().orElse(new DcAccount());
        DcAccount salesSparePartsAccessories = accountService.findByName(StaticAccountName.SALES_SPARE_PARTS_ACCESSORIES.toString()).stream().findFirst().orElse(new DcAccount());
        DcAccount earnedIncentives = accountService.findByName(StaticAccountName.EARNED_INCENTIVES.toString()).stream().findFirst().orElse(new DcAccount());

        List<DcAccount> modelAccounts = accountService.findModelAccounts();
        List<DcAccountValue> modelAccountValues = new ArrayList<>();
        if(!modelAccounts.isEmpty()){
            modelAccountValues = modelAccounts.stream().map(DcAccount::getAccountValues).filter(Objects::nonNull).flatMap(List::stream).collect(Collectors.toList());
        }

        String modelSum = modelAccounts.stream().map(account->"?").collect(Collectors.joining("+"));

        updateHondaNewCarRetailUnitsFormula(hondaNewCarRetail, modelAccountValues, modelSum);
        updateHondaNewCarRetailSalesFormula(hondaNewCarRetail, salesSparePartsAccessories, modelAccountValues, modelSum);
        updateHondaNewCarRetailGrossProfitFormula(hondaNewCarRetail, salesSparePartsAccessories, earnedIncentives, modelAccountValues, modelSum);
    }

    private void updateHondaNewCarRetailUnitsFormula(DcAccount hondaNewCarRetail,List<DcAccountValue> modelAccountValues, String modelSum){
        if(modelSum.isEmpty()){
            modelSum = "0";
        }
        Predicate<DcAccountValue> typeValueFilter = acValue->acValue.getTypeAccountValue().getName().equals(TypeAccountValueEnum.UNITS.toString()) && acValue.getTypeAccountValue().getTypeAccountParent().getTypeAccountParent().getName().equals(TypeAccountValueEnum.CURRENT_MONTH.toString());
        DcAccountValue hondaNewCarRetailUnit = hondaNewCarRetail.getAccountValues().stream().filter(typeValueFilter).findFirst().orElse(new DcAccountValue());
        DcFormula formula = hondaNewCarRetailUnit.getFormula() != null ? hondaNewCarRetailUnit.getFormula() : new DcFormula();
        formula.setFormula(modelSum);
        formula.setOwnerAccountValue(hondaNewCarRetailUnit);

        List<DcAccountValue> accountValues = modelAccountValues.stream().filter(typeValueFilter).collect(Collectors.toList());
        AtomicInteger i = new AtomicInteger(0);
        List<DcFormulaTerm> terms = accountValues.stream().map((acValue)->
             new DcFormulaTerm(formula,acValue,i.getAndIncrement() + 1)
         ).collect(Collectors.toList());

        if(formula.getId() != null){
                formula.getTerms().clear();
                formula.getTerms().addAll(terms);
        }else {
            formula.setTerms(terms);
        }

        formulaService.save(formula);
    }

    private void updateHondaNewCarRetailSalesFormula(DcAccount hondaNewCarRetail,DcAccount salesSparePartsAccessories, List<DcAccountValue> modelAccountValues, String modelSum){
        String formulaText = modelSum + "+?";
        if(modelSum.isEmpty()){
            formulaText = "?";
        }
        Predicate<DcAccountValue> typeValueFilter = acValue->acValue.getTypeAccountValue().getName().equals(TypeAccountValueEnum.SALES.toString()) && acValue.getTypeAccountValue().getTypeAccountParent().getTypeAccountParent().getName().equals(TypeAccountValueEnum.CURRENT_MONTH.toString());
        DcAccountValue hondaNewCarRetailSales = hondaNewCarRetail.getAccountValues().stream().filter(typeValueFilter).findFirst().orElse(new DcAccountValue());
        DcAccountValue salesSparePartsAccessoriesSales =  salesSparePartsAccessories.getAccountValues().stream().filter(typeValueFilter).findFirst().orElse(new DcAccountValue());
        DcFormula formula = hondaNewCarRetailSales.getFormula() != null ? hondaNewCarRetailSales.getFormula() : new DcFormula();
        formula.setFormula(formulaText);
        formula.setOwnerAccountValue(hondaNewCarRetailSales);

        List<DcAccountValue> accountValues = modelAccountValues.stream().filter(typeValueFilter).collect(Collectors.toList());

        AtomicInteger i = new AtomicInteger(0);
        List<DcFormulaTerm> terms = accountValues.stream().map((acValue)->
            new DcFormulaTerm(formula, acValue, i.getAndIncrement() + 1)
        ).collect(Collectors.toList());
        terms.add(new DcFormulaTerm(formula, salesSparePartsAccessoriesSales, i.getAndIncrement() + 1));

        if(formula.getId() != null){
            formula.getTerms().clear();
            formula.getTerms().addAll(terms);
        }else {
            formula.setTerms(terms);
        }

        formulaService.save(formula);
    }

    private void updateHondaNewCarRetailGrossProfitFormula(DcAccount hondaNewCarRetail, DcAccount salesSparePartsAccessories, DcAccount earnedIncentives, List<DcAccountValue> modelAccountValues, String modelSum){
        String formulaText = modelSum + "+?+?";
        if(modelSum.isEmpty()){
            formulaText = "?+?";
        }
        Predicate<DcAccountValue> typeValueFilter = acValue->acValue.getTypeAccountValue().getName().equals(TypeAccountValueEnum.GROSS_PROFIT.toString()) && acValue.getTypeAccountValue().getTypeAccountParent().getTypeAccountParent().getName().equals(TypeAccountValueEnum.CURRENT_MONTH.toString());
        DcAccountValue hondaNewCarRetailGrossProfit = hondaNewCarRetail.getAccountValues().stream().filter(typeValueFilter).findFirst().orElse(new DcAccountValue());
        DcAccountValue salesSparePartsAccessoriesGrossProfit =  salesSparePartsAccessories.getAccountValues().stream().filter(typeValueFilter).findFirst().orElse(new DcAccountValue());
        DcAccountValue earnedIncentivesGrossProfit =  earnedIncentives.getAccountValues().stream().filter(typeValueFilter).findFirst().orElse(new DcAccountValue());
        DcFormula formula = hondaNewCarRetailGrossProfit.getFormula() != null ? hondaNewCarRetailGrossProfit.getFormula() : new DcFormula();
        formula.setFormula(formulaText);
        formula.setOwnerAccountValue(hondaNewCarRetailGrossProfit);

        List<DcAccountValue> accountValues = modelAccountValues.stream().filter(typeValueFilter).collect(Collectors.toList());

        AtomicInteger i = new AtomicInteger(0);
        List<DcFormulaTerm> terms = accountValues.stream().map((acValue)->
            new DcFormulaTerm(formula, acValue, i.getAndIncrement() + 1)
        ).collect(Collectors.toList());

        terms.add(new DcFormulaTerm(formula, salesSparePartsAccessoriesGrossProfit, i.getAndIncrement() + 1));
        terms.add(new DcFormulaTerm(formula, earnedIncentivesGrossProfit, i.getAndIncrement() + 1));

        if(formula.getId() != null){
            formula.getTerms().clear();
            formula.getTerms().addAll(terms);
        }else {
            formula.setTerms(terms);
        }

        formulaService.save(formula);
    }
}
