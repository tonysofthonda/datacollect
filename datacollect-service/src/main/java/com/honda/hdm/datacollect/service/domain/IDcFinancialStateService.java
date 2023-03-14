package com.honda.hdm.datacollect.service.domain;

import com.honda.hdm.datacollect.model.dto.AnalisysFinancialDto;
import com.honda.hdm.datacollect.model.dto.FinancialActiveDto;
import com.honda.hdm.datacollect.model.dto.FinancialPassiveDto;
import com.honda.hdm.datacollect.model.dto.FinancialStateDto;
import com.honda.hdm.datacollect.model.dto.GrossProfitPage4Dto;
import com.honda.hdm.datacollect.model.dto.IncomeDeductionDto;
import com.honda.hdm.datacollect.model.dto.NameAccountDto;
import com.honda.hdm.datacollect.model.dto.OtherIncomeDto;
import com.honda.hdm.datacollect.model.dto.Page2and3FinancialDto;
import com.honda.hdm.datacollect.model.dto.Page2and3PositionFinancialDto;
import com.honda.hdm.datacollect.model.dto.PerMonthFinancialDto;
import com.honda.hdm.datacollect.model.entity.*;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateDto;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateStatusDto;
import com.honda.hdm.datacollect.model.exception.DataCollectBusinessLogicException;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

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
    
    public List<FinancialActiveDto> getFinancialActive(Long financialId);
    
    public List<FinancialPassiveDto> getFinancialPassive(Long financialId);
    
    public List<AnalisysFinancialDto> getFinancialAnalisys(Long financialId);
    
    public List<NameAccountDto> getFinancialNameAccount(Long financialId);
    
    public List<PerMonthFinancialDto> getPerMonthFinancial(Long financialId);

	public void updateActive(FinancialActiveDto dcPerMounthFinancialState);

	void updatePassive(FinancialPassiveDto financialPassiveDto);

	public void updateOtherActiveFinancial(NameAccountDto nameAccountDto);

	void updateOtherPassiveFinancial(PerMonthFinancialDto perMonthFinancialDto);

	void updateAnalisysFinancial(AnalisysFinancialDto analisysFinancialDto);

	public List<Page2and3FinancialDto> getIncomeAndExpesesPage3(Long financialId);

	public List<Page2and3PositionFinancialDto> getPositionPage3(Long financialId);

	public List<OtherIncomeDto> getOtherIncomePage3(Long financialId);

	public List<IncomeDeductionDto> getIncomeDeductionPage3(Long financialId);

	public List<GrossProfitPage4Dto> getIncomeAndExpensesPage4(Long financialId);

	public FinancialStateDto getInformation();

	public void getIncomeAndExpesesPage3(Page2and3FinancialDto page2and3FinancialDto);

	public void getPositionPage3(Page2and3PositionFinancialDto page2and3PositionFinancialDto);

	public void updateOtherIncomePage3(OtherIncomeDto otherIncomeDto);

	public void updateIncomeDeductionPage3(IncomeDeductionDto incomeDeductionDto);

	public void updateIncomeAndExpensesPage4(GrossProfitPage4Dto grossProfitPage4Dto);

	public List<DcFinancialStateDto> filterAllFinancialStateDto();
}
