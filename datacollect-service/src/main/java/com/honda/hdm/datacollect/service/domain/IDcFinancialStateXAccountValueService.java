package com.honda.hdm.datacollect.service.domain;

import com.honda.hdm.datacollect.model.entity.DcFinancialStateXAccountValue;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateXAccountValueDto;

import java.util.List;

public interface IDcFinancialStateXAccountValueService extends IBaseDomainService<DcFinancialStateXAccountValue, Long>,IDtoService<DcFinancialStateXAccountValueDto, Long>{

    public List<DcFinancialStateXAccountValue> findLastMontTotalUnitsPassives(Long financialStateId);

    public List<DcFinancialStateXAccountValueDto> findLastMontTotalUnitsPassivesDto(Long financialStateId);

    public List<DcFinancialStateXAccountValue> findHistoricalPage4(Long financialStateId);

    public List<DcFinancialStateXAccountValueDto> findHistoricalPage4Dto(Long financialStateId);

    public List<DcFinancialStateXAccountValue> findHistoricalPage2and3(Long financialStateId);

    public List<DcFinancialStateXAccountValueDto> findHistoricalPage2and3Dto(Long financialStateId);

    public List<DcFinancialStateXAccountValueDto> saveFinancialStateValuesDto(List<DcFinancialStateXAccountValueDto> values, Long financialStateId);

    public List<DcFinancialStateXAccountValue> saveFinancialStateValues(List<DcFinancialStateXAccountValue> values, Long financialStateId);

    public DcFinancialStateXAccountValue findByAccountValueAndFinancialState(Long accountValueId, Long financialStateId);

    public DcFinancialStateXAccountValueDto findByAccountValueAndFinancialStateDto(Long accountValueId, Long financialStateId);

    public void deleteByAccountValue(Long accountValueId);
}
