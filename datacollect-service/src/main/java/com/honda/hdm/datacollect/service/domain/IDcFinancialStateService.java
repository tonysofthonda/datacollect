package com.honda.hdm.datacollect.service.domain;

import com.honda.hdm.datacollect.model.entity.*;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateDto;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateStatusDto;
import com.honda.hdm.datacollect.model.exception.DataCollectBusinessLogicException;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.Date;

public interface IDcFinancialStateService extends IRecordStatusableService<DcFinancialState, Long>,
        IDtoService<DcFinancialStateDto, Long>{

    public DcFinancialState addStatus(DcFinancialStateStatus status, DcFinancialState financialState, String comments, Date newLimitDate);

    public DcFinancialStateDto addStatusDto(DcFinancialStateStatusDto status, DcFinancialStateDto financialState, String comments, Date newLimitDate);

    public DcFinancialState saveNewMonth(DcDealer dealer);

    public Page<DcFinancialState> filterFinancialState(BigDecimal dealerGroupId, Long dealerId,
                                                       Integer year, Integer month,
                                                       Long statusId, Pageable pageable);

    public Page<DcFinancialStateDto> filterFinancialStateDto(BigDecimal dealerGroupId, Long dealerId,
                                                       Integer year, Integer month,
                                                       Long statusId, Pageable pageable);

    public DcFinancialState findFinancialStateByYearAndMonth(Integer year, Integer month, Long dealerId);

    public DcFinancialStateDto findFinancialStateByYearAndMonthDto(Integer year, Integer month, Long dealerId);

    public void checkDoneFinancialState(Long financialStateId);

    public void checkDoneFinancialStateDto(Long financialStateId);
    
    public void restartProgressStatus(Long id);
    
    public void processWorkbook(byte[] fileBytes, Long id) throws DataCollectBusinessLogicException;
}
