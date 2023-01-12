package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.DcAccountValue;
import com.honda.hdm.datacollect.model.entity.DcFinancialState;
import com.honda.hdm.datacollect.model.entity.DcFinancialStateXAccountValue;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateXAccountValueDto;
import com.honda.hdm.datacollect.repository.DcFinancialStateXAccountValueRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import com.honda.hdm.datacollect.service.domain.IDcFinancialStateService;
import com.honda.hdm.datacollect.service.domain.IDcFinancialStateXAccountValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class DcFinancialStateXAccountValueService extends BaseDomainService<DcFinancialStateXAccountValue, Long> implements IDcFinancialStateXAccountValueService {

    @Autowired
    DcFinancialStateXAccountValueRepository repository;

    @Autowired
    IDcFinancialStateService financialStateService;

    @Autowired
    DcAccountValueService accountValueService;

    @Autowired
    DtoConverter dtoConverter;

    @Autowired
    ModelConverter modelConverter;

    @Override
    public List<DcFinancialStateXAccountValue> findLastMontTotalUnitsPassives(Long financialStateId) {
        DcFinancialState financialState = financialStateService.findOne(financialStateId);
        List<DcFinancialStateXAccountValue> values = new ArrayList<>();
        List<DcFinancialStateXAccountValue> lastMonthValues = repository.findTotalUnitsPasives(financialState.getYear(), financialState.getMonth() - 1, financialState.getDealer().getId());
        if(financialState.getMonth() != 1 && lastMonthValues != null && !lastMonthValues.isEmpty()){
            values = lastMonthValues;
        }
        return values;
    }

    @Override
    public List<DcFinancialStateXAccountValueDto> findLastMontTotalUnitsPassivesDto(Long financialStateId) {
        return findLastMontTotalUnitsPassives(financialStateId).stream().map(dtoConverter::convertFinancialStateXAccountValueSimple).collect(Collectors.toList());
    }

    @Override
    public List<DcFinancialStateXAccountValue> findHistoricalPage4(Long financialStateId) {
        DcFinancialState financialState = financialStateService.findOne(financialStateId);

        List<DcFinancialStateXAccountValue> values = new ArrayList<>();
        List<DcFinancialStateXAccountValue> historic = findHistoricalPage4ByYearAndMonth(financialState.getYear(), financialState.getMonth() - 1, financialState.getDealer().getId());
        List<DcAccountValue> accountValues = accountValueService.findHistoricalPage4AccountValues();

        if(financialState.getMonth() != 1){
            if(historic != null && !historic.isEmpty()){
                values = historic;
            }
            if(values.size() < accountValues.size()){
                Map<Long, DcAccountValue> mapValues = values.stream().collect(Collectors.toMap(finState -> finState.getAccountValue().getId(), DcFinancialStateXAccountValue::getAccountValue));
                for (DcAccountValue acValue : accountValues){
                    if(!mapValues.containsKey(acValue.getId())){
                        values.add(new DcFinancialStateXAccountValue("0",financialState,acValue));
                    }
                }
            }
        }else {
            values = accountValues.stream().map(acValue->new DcFinancialStateXAccountValue("0",financialState,acValue)).collect(Collectors.toList());
        }
        return values;
    }

    private List<DcFinancialStateXAccountValue> findHistoricalPage4ByYearAndMonth(Integer year, Integer month, Long dealerId){
        return repository.findHistoricalPage4AccountValues(year,month,dealerId);
    }

    @Override
    public List<DcFinancialStateXAccountValueDto> findHistoricalPage4Dto(Long financialStateId) {
        return findHistoricalPage4(financialStateId).stream().map(dtoConverter::convertFinancialStateXAccountValueSimple).collect(Collectors.toList());
    }

    @Override
    public List<DcFinancialStateXAccountValue> findHistoricalPage2and3(Long financialStateId) {
        DcFinancialState financialState = financialStateService.findOne(financialStateId);

        List<DcFinancialStateXAccountValue> values = new ArrayList<>();
        List<DcFinancialStateXAccountValue> historic = findHistoricalPage2and3ByYearAndMonth(financialState.getYear(), financialState.getMonth() - 1, financialState.getDealer().getId());
        List<DcAccountValue> accountValues = accountValueService.findHistoricalPage2and3AccountValues();

        if(financialState.getMonth() != 1){
            if(historic != null && !historic.isEmpty()){
                values = historic;
            }
            if(values.size() < accountValues.size()){
                Map<Long, DcAccountValue> mapValues = values.stream().collect(Collectors.toMap(finState -> finState.getAccountValue().getId(), DcFinancialStateXAccountValue::getAccountValue));
                for (DcAccountValue acValue : accountValues){
                    if(!mapValues.containsKey(acValue.getId())){
                        values.add(new DcFinancialStateXAccountValue("0",financialState,acValue));
                    }
                }
            }
        }else {
            values = accountValues.stream().map(acValue->new DcFinancialStateXAccountValue("0",financialState,acValue)).collect(Collectors.toList());
        }
        return values;
    }

    private List<DcFinancialStateXAccountValue> findHistoricalPage2and3ByYearAndMonth(Integer year, Integer month, Long dealerId){
        return repository.findHistoricalPage2and3AccountValues(year,month,dealerId);
    }

    @Override
    public List<DcFinancialStateXAccountValueDto> findHistoricalPage2and3Dto(Long financialStateId) {
        return findHistoricalPage2and3(financialStateId).stream().map(dtoConverter::convertFinancialStateXAccountValueSimple).collect(Collectors.toList());
    }

    @Transactional
    @Override
    public List<DcFinancialStateXAccountValue> saveFinancialStateValues(List<DcFinancialStateXAccountValue> values, Long financialStateId) {
        DcFinancialState financialState = financialStateService.findOne(financialStateId);
        if(financialState == null){
            return null;
        }
        financialState.setAccountValues(values.stream().map(value->{
            DcFinancialStateXAccountValue currentValue = findByAccountValueAndFinancialState(value.getAccountValue().getId(), value.getFinancialState().getId());
            if(currentValue != null){
                value.setId(currentValue.getId());
            }
            return value;
        }).collect(Collectors.toList()));
        DcFinancialState newFinancialState = financialStateService.save(financialState);
        return newFinancialState.getAccountValues();
    }

    @Transactional
    @Override
    public List<DcFinancialStateXAccountValueDto> saveFinancialStateValuesDto(List<DcFinancialStateXAccountValueDto> values, Long financialStateId) {
        return saveFinancialStateValues(values.stream().map(modelConverter::convertFinancialStateXAccountValueSimple).collect(Collectors.toList()), financialStateId).stream().map(dtoConverter::convertFinancialStateXAccountValueSimple).collect(Collectors.toList());
    }

    @Override
    public DcFinancialStateXAccountValueDto saveDto(DcFinancialStateXAccountValueDto dto) {
        return dtoConverter.convertFinancialStateXAccountValue(save(modelConverter.convertFinancialStateXAccountValue(dto)));
    }

    @Override
    public DcFinancialStateXAccountValueDto updateDto(DcFinancialStateXAccountValueDto dto, Long id) {
        DcFinancialStateXAccountValueDto value = findOneDto(id);
        if(value == null){
            return null;
        }
        value.setValue(dto.getValue());
        return saveDto(value);
    }

    @Override
    public DcFinancialStateXAccountValueDto findOneDto(Long id) {
        DcFinancialStateXAccountValue value = findOne(id);
        if(value == null){
            return null;
        }
        return dtoConverter.convertFinancialStateXAccountValue(value);
    }

    @Override
    public DcFinancialStateXAccountValue findByAccountValueAndFinancialState(Long accountValueId, Long financialStateId) {
        return repository.findByAccountValueAndFinancialState(accountValueId,financialStateId);
    }

    @Override
    public DcFinancialStateXAccountValueDto findByAccountValueAndFinancialStateDto(Long accountValueId, Long financialStateId) {
        DcFinancialStateXAccountValue value = findByAccountValueAndFinancialState(accountValueId,financialStateId);
        if(value == null){
            return null;
        }
        return dtoConverter.convertFinancialStateXAccountValue(value);
    }

    @Override
    public Page<DcFinancialStateXAccountValueDto> findAllDto(Pageable pageable) {
        return findAll(pageable).map(dtoConverter::convertFinancialStateXAccountValue);
    }

    @Override
    public Page<DcFinancialStateXAccountValueDto> findAllByTermDto(String term, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public Page<DcFinancialStateXAccountValueDto> findByRecordStatusIdDto(DcRecordStatusEnum dcRecordStatus, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public void deleteByAccountValue(Long accountValueId) {
        repository.deleteByAccountValue(accountValueId);
    }
}
