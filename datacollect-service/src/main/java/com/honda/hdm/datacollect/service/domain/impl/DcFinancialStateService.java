package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.FinancialActiveDto;
import com.honda.hdm.datacollect.model.dto.AnalisysFinancialDto;
import com.honda.hdm.datacollect.model.dto.FinancialPassiveDto;
import com.honda.hdm.datacollect.model.dto.FinancialStateDto;
import com.honda.hdm.datacollect.model.dto.IncomeDeductionDto;
import com.honda.hdm.datacollect.model.dto.NameAccountDto;
import com.honda.hdm.datacollect.model.dto.OtherIncomeDto;
import com.honda.hdm.datacollect.model.dto.Page2and3FinancialDto;
import com.honda.hdm.datacollect.model.dto.Page2and3PositionFinancialDto;
import com.honda.hdm.datacollect.model.dto.GrossProfitPage4Dto;
import com.honda.hdm.datacollect.model.dto.PassiveFinancialDto;
import com.honda.hdm.datacollect.model.dto.PerMonthFinancialDto;
import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.*;
import com.honda.hdm.datacollect.model.entity.comm.EmailInstance;
import com.honda.hdm.datacollect.model.entity.dto.*;
import com.honda.hdm.datacollect.model.enums.EvaluationAreaEnum;
import com.honda.hdm.datacollect.model.enums.FinancialStateStatusEnum;
import com.honda.hdm.datacollect.model.enums.NotificationsEnum;
import com.honda.hdm.datacollect.model.exception.DataCollectBusinessLogicException;
import com.honda.hdm.datacollect.repository.DcAccountRepository;
import com.honda.hdm.datacollect.repository.DcActiveRepository;
import com.honda.hdm.datacollect.repository.DcAnlisysFinancialStateRepository;
import com.honda.hdm.datacollect.repository.DcDealerRepository;
import com.honda.hdm.datacollect.repository.DcFinancialStateRepository;
import com.honda.hdm.datacollect.repository.DcIncomeDeductionRepository;
import com.honda.hdm.datacollect.repository.DcOtherIncomeRepository;
import com.honda.hdm.datacollect.repository.DcPageTwoFinancialRepository;
import com.honda.hdm.datacollect.repository.DcPassiveRepository;
import com.honda.hdm.datacollect.repository.DcPerMounthFinancialStateRepository;
import com.honda.hdm.datacollect.repository.DcPositionPage2FinancialRepository;
import com.honda.hdm.datacollect.repository.DcGrossProfitAnalysisRepository;
import com.honda.hdm.datacollect.repository.comm.DcNameAccountFinancialRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.*;
import com.honda.hdm.datacollect.service.excel.ExcelPerMonth;
import com.honda.hdm.datacollect.service.excel.Excelpage2And3Position;
import com.honda.hdm.datacollect.service.util.Helpers;
import com.honda.hdm.datacollect.service.util.MailSenderService;
import com.honda.hdm.datacollect.service.excel.ExcelActiveFinancial;
import com.honda.hdm.datacollect.service.excel.ExcelAnalisys;
import com.honda.hdm.datacollect.service.excel.ExcelIncomeDeductionFinancial;
import com.honda.hdm.datacollect.service.excel.ExcelNameAccountFinancial;
import com.honda.hdm.datacollect.service.excel.ExcelOtherIncomeFinancial;
import com.honda.hdm.datacollect.service.excel.ExcelPage2And3Financial;
import com.honda.hdm.datacollect.service.excel.ExcelPage4;
import com.honda.hdm.datacollect.service.excel.ExcelPassiveFinancial;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.*;
import java.util.function.BiFunction;
import java.util.stream.Collectors;

@Service
public class DcFinancialStateService extends RecordStatusableService<DcFinancialState, Long> implements IDcFinancialStateService {

    @Autowired
    DcFinancialStateRepository repository;

    @Autowired
    IDcFinancialStateXAccountValueService valueService;

    @Autowired
    IDcUserTypeService userTypeService;

    @Autowired
    IDcEvaluationAreaService areaService;

    @Autowired
    DcFinancialStateXStatusService finStatusService;

    @Autowired
    DcFinancialStateStatusService statusService;

    @Autowired
    IDcContactXDealerService contactDealerService;

    @Autowired
    DcAccountErrorService errorService;

    @Autowired
    MailSenderService mailSenderService;

    @Autowired
    DtoConverter dtoConverter;
    
    @Autowired
    private DcDealerRepository dcDealerRepository;

    @Autowired
    ModelConverter modelConverter;        
    
    @Autowired
    private DcActiveRepository dcActiveRepository;
    
    @Autowired
    private DcPassiveRepository dcPassiveRepository;
    
    @Autowired
    private ExcelPerMonth perMonth;
    
    @Autowired
    private ExcelNameAccountFinancial excelNameAccountFinancial;
    
    @Autowired
    private DcAnlisysFinancialStateRepository dcAnlisysFinancialStateRepository;
    
    @Autowired
    private DcPerMounthFinancialStateRepository dcPerMounthFinancialStateRepository;
    
    @Autowired
    private DcNameAccountFinancialRepository dcNameAccountFinancialRepository;
    
    @Autowired
    private ExcelAnalisys excelAnalisys;
    
    @Autowired
    private ExcelActiveFinancial excelActiveFinancial;
    
    @Autowired
    private ExcelPassiveFinancial excelPassiveFinancial;
    
    @Autowired
    private ExcelPage2And3Financial excelPage2And3Financial;
    
    @Autowired
    private DcPageTwoFinancialRepository dcPageTwoFinancialRepository;
    
    @Autowired
    private Excelpage2And3Position excelpage2And3Position;
    
    
    @Autowired
    private ExcelOtherIncomeFinancial excelOtherIncomeFinancial;
    
    @Autowired
    private ExcelIncomeDeductionFinancial excelIncomeDeductionFinancial;
    
    @Autowired
    private ExcelPage4 excelPage3;
    
    @Autowired
    private DcPositionPage2FinancialRepository dcPositionPage2FinancialRepository;
    
    @Autowired
    private DcOtherIncomeRepository dcOtherIncomeRepository;
    
    @Autowired
    private DcIncomeDeductionRepository dcIncomeDeductionRepository;
    
    @Autowired
    private DcGrossProfitAnalysisRepository dcGrossProfitAnalysisRepository;
    
    @Autowired
    private DcAccountRepository dcAccountRepository;
    
    @Value("${custom.financial-state.max-rejects-send.email}")
    Integer maxRejects;

    @Override
    public Page<DcFinancialState> filterFinancialState(BigDecimal dealerGroupId, Long dealerId, Integer year, Integer month, Long statusId, Pageable pageable) {
        return repository.filterFinancialState(dealerGroupId,dealerId, year, month, statusId, pageable);
    }

    @Override
    public DcFinancialState findFinancialStateByYearAndMonth(Integer year, Integer month, Long dealerId) {
        return repository.findFinancialStateByYearAndMonthAndDealerId(year,month,dealerId);
    }
    
    @Override
    public Page<DcFinancialStateDto> filterFinancialStateDto(BigDecimal dealerGroupId, Long dealerId, Integer year, Integer month, Long statusId, Pageable pageable) {
        return repository.filterFinancialState(dealerGroupId, dealerId, year, month, statusId, pageable).map(dtoConverter::convertFinancialStateMin);
    }

    @Override
    public DcFinancialState saveNewMonth(DcDealer dealer) {
        DcFinancialState financialState = new DcFinancialState();
        financialState.setDealer(dealer);

        Integer month = LocalDate.now().getMonthValue();
        Integer year = LocalDate.now().getYear();
        financialState.setMonth(month);
        financialState.setYear(year);
        financialState.setLimitDate(Date.from(LocalDate.parse(year+"-"+String.format("%02d", month)+"-"+"10").atStartOfDay(ZoneId.systemDefault()).toInstant()));

        financialState = save(financialState);
        return financialState;
    }

    @Override
    public DcFinancialStateDto saveDto(DcFinancialStateDto dto) {
        return dtoConverter.convertFinancialState(save(modelConverter.convertFinancialState(dto)));
    }

    @Override
    public DcFinancialStateDto updateDto(DcFinancialStateDto dto, Long id) {
        return dtoConverter.convertFinancialState(update(modelConverter.convertFinancialState(dto), id));
    }

    @Transactional
    @Override
    public DcFinancialState addStatus(DcFinancialStateStatus status, DcFinancialState financialState, String comments, Date newLimiteDate) {
        DcFinancialStateXStatus newStatus = new DcFinancialStateXStatus();
        newStatus.setFinancialState(financialState);
        newStatus.setDateAssignment(new Date());
        newStatus.setStatus(status);
        newStatus.setComments(comments);

        //TODO: Get user session information to change this fields values
        newStatus.setUserType(userTypeService.findByName("LDAP - HDM"));
        newStatus.setArea(areaService.findByName("Postventas"));
        newStatus.setEmail("jose_espinosavalenzuela@hdm.honda.com");
        newStatus.setUsername("Jose Alberto Espinosa Valenzuela - VJC80587");
        //END TODO

        financialState.getStatuses().add(newStatus);
        if(newLimiteDate != null){
            financialState.setLimitDate(newLimiteDate);
        }

        return update(financialState, financialState.getId());
    }

    @Transactional
    @Override
    public DcFinancialStateDto addStatusDto(DcFinancialStateStatusDto status, DcFinancialStateDto financialState, String comments, Date newLimiteDate) {
        return dtoConverter.convertFinancialState(addStatus(modelConverter.convertFinancialStateStatus(status), modelConverter.convertFinancialState(financialState), comments, newLimiteDate));
    }

    @Override
    public DcFinancialStateDto findOneDto(Long id) {
        return dtoConverter.convertFinancialState(findOne(id));
    }

    @Override
    public Page<DcFinancialStateDto> findAllDto(Pageable pageable) {
        return findAll(pageable).map(dtoConverter::convertFinancialState);
    }

    @Override
    public Page<DcFinancialStateDto> findAllByTermDto(String term, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public Page<DcFinancialStateDto> findByRecordStatusIdDto(DcRecordStatusEnum dcRecordStatus, Pageable pageable) {
        return findAllDto(pageable);
    }

    @Override
    public DcFinancialStateDto findFinancialStateByYearAndMonthDto(Integer year, Integer month, Long dealerId) {
        DcFinancialState financialState = findFinancialStateByYearAndMonth(year, month, dealerId);
        if(financialState == null){
            return null;
        }
        return dtoConverter.convertFinancialState(financialState);
    }

    @Override
    public DcFinancialState update(DcFinancialState financialState, Long id) {
        DcFinancialState currentFinancialState = findOne(id);
        if(currentFinancialState == null){
            return null;
        }
        currentFinancialState.getStatuses().clear();
        currentFinancialState.getStatuses().addAll(financialState.getStatuses());
        currentFinancialState.setLimitDate(financialState.getLimitDate());
        return repository.save(currentFinancialState);
    }

    @Override
    public void checkDoneFinancialState(Long financialStateId){
        DcFinancialState financialState = repository.findOne(financialStateId);
        if(financialState == null){
            return;
        }
        List<DcFinancialStateXStatus> statuses = finStatusService.findStatusAfterSending(financialStateId);
        List<DcAccountError> errors = errorService.findLastErrorsSelected(financialStateId);
        String afterSalesObservations = "";
        String salesObservations = "";

        BiFunction<DcFinancialStateXStatus,String,Boolean> statusHasArea = (finstatus,area)-> finstatus.getArea() != null && finstatus.getArea().getName().equals(area);
        BiFunction<DcFinancialStateXStatus,String,Boolean> statusHasStatusName= (finstatus,statusName)-> finstatus.getStatus().getName().equals(statusName);

        Boolean afterSalesApprove = false;
        Boolean salesApprove = false;

        Integer rejectCounter = 0;
        Integer evaluationCounter = 0;
        for (DcFinancialStateXStatus statusSaved : statuses) {
            if(statusHasStatusName.apply(statusSaved,FinancialStateStatusEnum.APPROVED.toString())){
                evaluationCounter++;
                if(statusHasArea.apply(statusSaved,EvaluationAreaEnum.AFTER_SALES.toString())){
                    afterSalesApprove = true;
                }
                if(statusHasArea.apply(statusSaved,EvaluationAreaEnum.SALES.toString())){
                    salesApprove = true;
                }
            }else if(statusHasStatusName.apply(statusSaved,FinancialStateStatusEnum.REJECTED.toString())){
                rejectCounter++;
                evaluationCounter++;
                if(statusHasArea.apply(statusSaved,EvaluationAreaEnum.AFTER_SALES.toString())){
                    afterSalesObservations = statusSaved.getComments();
                }
                if(statusHasArea.apply(statusSaved,EvaluationAreaEnum.SALES.toString())){
                    salesObservations = statusSaved.getComments();
                }
            }
        }
        if(salesApprove && afterSalesApprove){
            DcFinancialStateStatus status = statusService.findByName(FinancialStateStatusEnum.DONE.toString());
            DcFinancialStateXStatus newStatus = new DcFinancialStateXStatus();
            newStatus.setFinancialState(financialState);
            newStatus.setDateAssignment(new Date());
            
            newStatus.setStatus(status);

            financialState.getStatuses().add(newStatus);
            repository.save(financialState);

            sendStatusEmail(financialState, FinancialStateStatusEnum.APPROVED, "", "", new ArrayList<>());
        }else if(rejectCounter >= maxRejects || evaluationCounter >= 2){
            if(errors == null){
                errors = new ArrayList<>();
            }
            DcFinancialStateStatus status = statusService.findByName(FinancialStateStatusEnum.IN_PROGRESS.toString());
            DcFinancialStateXStatus newStatus = new DcFinancialStateXStatus();
            newStatus.setFinancialState(financialState);
            newStatus.setDateAssignment(new Date());
            newStatus.setStatus(status);

            financialState.getStatuses().add(newStatus);
            repository.save(financialState);

            sendStatusEmail(financialState, FinancialStateStatusEnum.REJECTED, afterSalesObservations, salesObservations, errors);
        }
    }

    @Override
    public void checkDoneFinancialStateDto(Long financialStateId) {
        checkDoneFinancialState(financialStateId);
    }

    @Transactional(readOnly = true)
    public void sendStatusEmail(DcFinancialState financialState, FinancialStateStatusEnum status, String afterSalesObservations, String salesObservations, List<DcAccountError> errors){
        EmailInstance emailInstance = new EmailInstance();
        emailInstance.setAsHtml(true);
        List<String> dealersEmails = contactDealerService.findAll(financialState.getDealer().getId()).stream().filter(contact -> contact.getNotifications().stream().anyMatch(notification -> notification.getName().equals(NotificationsEnum.FINANCIAL_INFORMATION.toString()))).map(contact -> contact.getContact().getEmail()).collect(Collectors.toList());
        emailInstance.setTo(dealersEmails);
        List<String> hdmUsersEmails = new ArrayList<>(new HashSet<>(financialState.getStatuses().stream().filter(currentStatus -> currentStatus.getArea() != null && currentStatus.getEmail() != null).map(DcFinancialStateXStatus::getEmail).collect(Collectors.toList())));
        hdmUsersEmails.addAll(new ArrayList<>(new HashSet<>(financialState.getDealer().getDcTerchief().getDcContactList().stream().map(DcContact::getEmail).collect(Collectors.toList()))));
        emailInstance.setCc(hdmUsersEmails);

        DcDealer dealer = financialState.getDealer();
        Integer year = financialState.getYear();
        Integer month = financialState.getMonth();

        emailInstance.setSubject(String.format("Estado Financiero %1s %2s/%3d %4s", dealer.getName(), Helpers.padLeftZeros(month.toString(), 2),year,status.toString()));

        StringBuilder sb = new StringBuilder();
        sb.append(String.format("Apreciable Distribuidor: %1s %2s\n", dealer.getDealerNumber(), dealer.getName()));
        sb.append(String.format("El Estado financiero correspondiente al mes: %1s/%2d\n", Helpers.padLeftZeros(month.toString(), 2), year));
        sb.append(String.format("Tiene Estatus: %1s\n",status.toString()));
        sb.append("\n");

        if(status.equals(FinancialStateStatusEnum.REJECTED)){
            sb.append("Favor de atender las siguientes observaciones:\n");

            if(!afterSalesObservations.isEmpty()){
                sb.append("<b>Postventa:</b>\n");
                sb.append(afterSalesObservations + "\n\n");
            }

            if(!salesObservations.isEmpty()){
                sb.append("<b>Ventas:</b>\n");
                sb.append(salesObservations + "\n\n");
            }

            if(afterSalesObservations.isEmpty() && salesObservations.isEmpty()){
                sb.append("Sin observaciones\n");
            }

            sb.append("Fecha limite para correccion de observaciones: ");
            sb.append(new SimpleDateFormat("dd/MM/yyyy").format(financialState.getLimitDate()) + "\n\n");


            if(errors != null && !errors.isEmpty()){
                sb.append("Los comentarios anteriores se presentan en las siguientes cuentas:\n");

                sb.append("<table><thead><tr><th>No. Cuenta</th> <th>Cuenta</th> <th>Tipo de valor</th></tr></thead><tbody>");

                for (DcAccountError error : errors) {
                    DcFinancialStateXAccountValue finValue = valueService.findOne(error.getAccountValue().getId());
                    String accountNumber = finValue.getAccountValue().getAccount().getAccountNumber();
                    String name = finValue.getAccountValue().getAccount().getName();
                    String typeAccountValue = finValue.getAccountValue().getTypeAccountValue().getName();
                    sb.append("<tr>");
                    sb.append("<td>" + (accountNumber != null ? accountNumber : "") +"</td>");
                    sb.append("<td>" + (name != null ? name : "") +"</td>");
                    sb.append("<td>" + (typeAccountValue != null ? typeAccountValue : "") +"</td>");
                    sb.append("</tr>");
                }

                sb.append("<tbody></table>\n");
            }

        }

        sb.append("Este correo fue generado de forma automatica por el sistema si tiene alguna duda por favor contacte a jefe de territorio.\n");
        if(status.equals(FinancialStateStatusEnum.REJECTED)){
            sb.append("Despues de la fecha limite el sistema bloqueara en automatico el registro del Estado Financiero");
        }

        emailInstance.setBody(sb.toString());

        mailSenderService.setMailInstance(emailInstance);
        mailSenderService.sendMail();
    }
    
    @Override
	public void restartProgressStatus(Long id) {
		DcFinancialState financialState = repository.getOne(id);
		if(financialState != null) {
			DcFinancialStateStatus status = statusService.findByName(FinancialStateStatusEnum.IN_PROGRESS.toString());
	        DcFinancialStateXStatus newStatus = new DcFinancialStateXStatus();
	        newStatus.setFinancialState(financialState);
	        newStatus.setDateAssignment(new Date());
	        newStatus.setStatus(status);

	        financialState.getStatuses().add(newStatus);
	        repository.save(financialState);
		}
	}

	@Override
	public void processWorkbook(byte[] fileBytes, Long id) throws DataCollectBusinessLogicException {
		if(fileBytes.length == 0) {
			throw new DataCollectBusinessLogicException("File is empty");
		}
		try {
			File workbook = File.createTempFile("workbook", ".xlsx");
	        try (FileOutputStream fos = new FileOutputStream(workbook)) {
	            fos.write(fileBytes);
	            fos.flush();
	        }
			processWorkbook(workbook, id);
		} catch(IOException ex) {
			throw new DataCollectBusinessLogicException(ex.getMessage());
		}	
		
	}
	
	private void processWorkbook(File file, Long id) throws DataCollectBusinessLogicException {
		try {
			processWorkbookExcel(file, id);
		} catch(Exception ex) {
			throw new DataCollectBusinessLogicException(ex.getMessage());
		}
	}
	
	/**
	 * Processes the file parameter (validates and generates a list of entities)
	 * @param file
	 * @return
	 */
	@Transactional
	public void processWorkbookExcel(File file, Long id) throws Exception {
		if(file == null) {
			throw new NullPointerException("File is invalid");
		}
		System.out.println("id: " + id);
		Optional<DcFinancialState> dcFinancialState = repository.findById(id);
		System.out.println("DcFinancialState: " + dcFinancialState.isPresent());
		if(dcFinancialState.isPresent() && dcFinancialState.get().getBstate() != 1) {
			dcGrossProfitAnalysisRepository.saveAll(page4(file, id));
			dcIncomeDeductionRepository.saveAll(page2AndIncomeDeduction(file, id));
			dcOtherIncomeRepository.saveAll(page2And3OtherIncome(file, id));
			dcPositionPage2FinancialRepository.saveAll(page2And3Position(file, id));
			dcPageTwoFinancialRepository.saveAll(page2And3(file, id));
			dcNameAccountFinancialRepository.saveAll(readWorkbookPage1NameAccount(file, id));
			dcPerMounthFinancialStateRepository.saveAll(readWorkbookPage1PerMount(file, id));
			dcAnlisysFinancialStateRepository.saveAll(readWorkbookPage1Analisys(file, id));
			dcActiveRepository.saveAll(readWorkbookPage1Active(file, id));
			dcPassiveRepository.saveAll(readWorkbookPage1Passive(file, id));
			dcFinancialState.get().setBstate(1l);
			repository.save(dcFinancialState.get());
		}
	}
	
	private List<DcGrossProfitAnalysis> page4(File file, Long id) throws FileNotFoundException, ParseException, DataCollectBusinessLogicException, IOException {
		List<GrossProfitPage4Dto> page4Dto = excelPage3.readModelsPage3(validFile(file, "PAGINA 4", 9));
		List<DcGrossProfitAnalysis> dcGrossProfitAnalysisList = new ArrayList<>();
		page4Dto.stream().forEach(data -> {
			DcGrossProfitAnalysis dcGrossProfitAnalysis = new DcGrossProfitAnalysis();
			dcGrossProfitAnalysis.setUnitCurrentMonth(data.getUnitCurrentMonth());
			dcGrossProfitAnalysis.setSalesCurrentMonth(data.getSalesCurrentMonth());
			dcGrossProfitAnalysis.setGrossProfitCurrentMonth(data.getGrossProfitCurrentMonth());
			dcGrossProfitAnalysis.setSoldCurrentMonth(data.getSoldUnistCurrentMonth());
			dcGrossProfitAnalysis.setDeptoVehicleCurrentMonth(data.getDeptoCarNewCurrentMonth());
			dcGrossProfitAnalysis.setDateCreate(new Date());
			dcGrossProfitAnalysis.setFinancialStateId(id);
			dcGrossProfitAnalysis.setNoLine(data.getNoLine());
			dcGrossProfitAnalysis.setNoAccount(data.getNoAccount());
			Optional<DcAccount> dcAccount = dcAccountRepository.findByNameAndPageAndAccountNumber(data.getDeptoCarNewCurrentMonth(), "4", data.getNoAccount());
			if(dcAccount.isPresent()) {
				dcGrossProfitAnalysis.setDcAccount(dcAccount.get());
				dcGrossProfitAnalysisList.add(dcGrossProfitAnalysis);
			}
		});
		dcGrossProfitAnalysisRepository.saveAll(dcGrossProfitAnalysisList);
		return dcGrossProfitAnalysisList;
	}
	
	private List<DcIncomeDeduction> page2AndIncomeDeduction(File file, Long id) throws FileNotFoundException, ParseException, DataCollectBusinessLogicException, IOException {
		List<IncomeDeductionDto> incomeDeductionDto = excelIncomeDeductionFinancial.readModelsOtherIncome(validFile(file, "PAGINA 2 Y 3", 9));
		List<DcIncomeDeduction> dcIncomeDeductionList = new ArrayList<>();
		incomeDeductionDto.stream().forEach(data -> {
			DcIncomeDeduction dcIncomeDeduction = new DcIncomeDeduction();
			dcIncomeDeduction.setNameAccount(data.getNameAccount());
			dcIncomeDeduction.setNoAccount(data.getNoAccount());
			dcIncomeDeduction.setMonth(data.getMonth());
			dcIncomeDeduction.setDateCreate(new Date());
			dcIncomeDeduction.setFinancialStateId(id);
			Optional<DcAccount> dcAccount = dcAccountRepository.findTopByNameAndPage(data.getNameAccount(), "2 y 3");
			if(dcAccount.isPresent()) {
				dcIncomeDeduction.setDcAccount(dcAccount.get());
				dcIncomeDeductionList.add(dcIncomeDeduction);
			}
		});
		dcIncomeDeductionRepository.saveAll(dcIncomeDeductionList);
		return dcIncomeDeductionList;
	}
	
	private List<DcOtherIncome> page2And3OtherIncome(File file, Long id) throws FileNotFoundException, ParseException, DataCollectBusinessLogicException, IOException {
		List<OtherIncomeDto> otherIncomeListDto = excelOtherIncomeFinancial.readModelsOtherIncome(validFile(file, "PAGINA 2 Y 3", 9));
		List<DcOtherIncome> dcOtherIncomeList = new ArrayList<>();
		otherIncomeListDto.stream().forEach(data -> {
			DcOtherIncome dcOtherIncome = new DcOtherIncome();
			dcOtherIncome.setNameAccount(data.getNameAccount());
			dcOtherIncome.setNoAccount(data.getNoAccount());
			dcOtherIncome.setMonth(data.getMonth());
			dcOtherIncome.setDateCreate(new Date());
			dcOtherIncome.setFinancialStateId(id);
			Optional<DcAccount> dcAccount = dcAccountRepository.findTopByNameAndPage(data.getNameAccount(), "2 y 3");
			if(dcAccount.isPresent()) {
				dcOtherIncome.setDcAccount(dcAccount.get());
				dcOtherIncomeList.add(dcOtherIncome);
			}
		});
		dcOtherIncomeRepository.saveAll(dcOtherIncomeList);
		return dcOtherIncomeList;
	}
	
	private List<DcPositionPage2Financial> page2And3Position(File file, Long id) throws FileNotFoundException, ParseException, DataCollectBusinessLogicException, IOException {
		List<Page2and3PositionFinancialDto> page2and3PositionFinancialDto = excelpage2And3Position.readModelsPage2And3(validFile(file, "PAGINA 2 Y 3", 9));
		List<DcPositionPage2Financial> dcPositionPage2FinancialList = new ArrayList<>();
		page2and3PositionFinancialDto.stream().forEach(data -> {
			DcPositionPage2Financial dcPositionPage2Financial = new DcPositionPage2Financial();
			dcPositionPage2Financial.setPosition(data.getPosition());
			dcPositionPage2Financial.setColumnA(data.getColumnA());
			dcPositionPage2Financial.setColumnB(data.getColumnB());
			dcPositionPage2Financial.setColumnC(data.getColumnC());
			dcPositionPage2Financial.setColumnD(data.getColumnD());
			dcPositionPage2Financial.setColumnE(data.getColumnE());
			dcPositionPage2Financial.setColumnF(data.getColumnF());
			dcPositionPage2Financial.setTotal(data.getTotal());
			dcPositionPage2Financial.setDateCreate(new Date());
			dcPositionPage2Financial.setFinancialStateId(id);
			Optional<DcAccount> dcAccount = dcAccountRepository.findTopByNameAndPage(data.getPosition(), "2 y 3");
			if(dcAccount.isPresent()) {
				dcPositionPage2Financial.setDcAccount(dcAccount.get());
				dcPositionPage2FinancialList.add(dcPositionPage2Financial);
			}
		});
		dcPositionPage2FinancialRepository.saveAll(dcPositionPage2FinancialList);
		return dcPositionPage2FinancialList;
	}
	
	private List<DcPageTwoFinancial> page2And3(File file, Long id) throws FileNotFoundException, ParseException, DataCollectBusinessLogicException, IOException {
		List<Page2and3FinancialDto> page2and3 = excelPage2And3Financial.readModelsPage2And3(validFile(file, "PAGINA 2 Y 3", 9));
		List<DcPageTwoFinancial> dcPageTwoFinancial = new ArrayList<>();
		page2and3.stream().forEach(data -> {
			DcPageTwoFinancial pageTwoAndThree = new DcPageTwoFinancial();
			pageTwoAndThree.setNameAccount(data.getNameAccount());
			pageTwoAndThree.setNoAccount(data.getNoAccount());
			pageTwoAndThree.setTotalIncomeExpenses(data.getTotalIncomeExpensesPerMonth());
			pageTwoAndThree.setGrossProfit(data.getGrossProfit());
			pageTwoAndThree.setNewHondaMonth(data.getNewHondaMonth());
			pageTwoAndThree.setNewOthersMonth(data.getNewOthersMonth());
			pageTwoAndThree.setUsedMonth(data.getUsedMonth());
			pageTwoAndThree.setDeptoService(data.getDeptoService());
			pageTwoAndThree.setDeptoWorkshop(data.getDeptoWorkshop());
			pageTwoAndThree.setSpareParts(data.getSpareParts());
			pageTwoAndThree.setDateCreate(new Date());
			pageTwoAndThree.setFinancialStateId(id);
			pageTwoAndThree.setNoLine(data.getNoLine());
			Optional<DcAccount> dcAccount = dcAccountRepository.findByNameAndPageAndAccountNumber(data.getNameAccount(), "2 y 3", data.getNoAccount());
			if(dcAccount.isPresent()) {
				pageTwoAndThree.setDcAccount(dcAccount.get());
				dcPageTwoFinancial.add(pageTwoAndThree);
			}
		});
		dcPageTwoFinancialRepository.saveAll(dcPageTwoFinancial);
		return dcPageTwoFinancial;
	}
	
	private List<DcActiveFinancial> readWorkbookPage1Active(File file, Long id) throws Exception {
		try {
			XSSFSheet sheet = validFile(file, "PAGINA 1", 9);
			
			XSSFRow rowDealer = sheet.getRow(6);
			findDealer(rowDealer);

			XSSFRow rowDate = sheet.getRow(7);
			if(!validMonth(rowDate.getCell(9).getDateCellValue())) {
				throw new DataCollectBusinessLogicException("Month invalid");
			}
			List<DcActiveFinancial> dcActiveFinancialList = new ArrayList<>();
			List<FinancialActiveDto> activeFinancialListDto = excelActiveFinancial.readModelsActive(sheet);
			activeFinancialListDto.stream().forEach(data -> {
				DcActiveFinancial dcActive = new DcActiveFinancial();
				dcActive.setTitle(data.getTitle());
				dcActive.setNoAccount(data.getNoAccount());
				dcActive.setImporte(data.getImporte());
				dcActive.setFinancialStateId(id);
				dcActive.setNoLine(data.getNoLine());
				dcActive.setDateCreate(new Date());
				Optional<DcAccount> dcAccount = dcAccountRepository.findByNameAndPageAndAccountNumber(data.getTitle(), "1", data.getNoAccount());
				if(dcAccount.isPresent()) {
					dcActive.setDcAccount(dcAccount.get());
					dcActiveFinancialList.add(dcActive);
				}
			});
			return dcActiveFinancialList;
		} catch(Exception ex) {
			throw new DataCollectBusinessLogicException(ex.getMessage());
		}
	}
	
	private List<DcPerMounthFinancialState> readWorkbookPage1PerMount(File file, Long id) throws Exception {
		try {
			XSSFSheet sheet = validFile(file, "PAGINA 1", 9);
			
			XSSFRow rowDealer = sheet.getRow(6);
			findDealer(rowDealer);

			XSSFRow rowDate = sheet.getRow(7);
			if(!validMonth(rowDate.getCell(9).getDateCellValue())) {
				throw new DataCollectBusinessLogicException("Month invalid");
			}
			List<DcPerMounthFinancialState> perMountList = new ArrayList<>();
			List<PerMonthFinancialDto> perMonthDtoList = this.perMonth.readModelsPerMonth(sheet);
			perMonthDtoList.stream().forEach(data -> {
				DcPerMounthFinancialState perMount = new DcPerMounthFinancialState();
				perMount.setMonth(data.getMonth());
				perMount.setUnitHonda(data.getUnitHonda());
				perMount.setNewOthers(data.getNewOthers());
				perMount.setUnitUsedRetail(data.getUnitUsedRetail());
				perMount.setUnitUsedWholesale(data.getUnitUsedWholesale());
				perMount.setProfitOrLoss(data.getProfitOrLoss());
				perMount.setDateCreate(new Date());
				perMount.setFinancialStateId(id);
				perMount.setNoLine(data.getNoLine());
				Optional<DcAccount> dcAccount = Optional.empty();
				if(perMount.getMonth().equals("Total")) {
					dcAccount = dcAccountRepository.findByNameAndPageAndAccountNumber(data.getMonth(), "1", String.valueOf(data.getProfitOrLoss().longValue()));
				} else {
					dcAccount = dcAccountRepository.findByNameAndPage(data.getMonth(), "1");
				}
				
				if(dcAccount.isPresent()) {
					perMount.setDcAccount(dcAccount.get());
					perMountList.add(perMount);
				}				
			});
			return perMountList;
		} catch(Exception ex) {
			throw new DataCollectBusinessLogicException(ex.getMessage());
		}
	}
	
	private List<DcAnlisysFinancialState> readWorkbookPage1Analisys(File file, Long id) throws Exception {
		try {
			XSSFSheet sheet = validFile(file, "PAGINA 1", 9);
			
			XSSFRow rowDealer = sheet.getRow(6);
			findDealer(rowDealer);

			XSSFRow rowDate = sheet.getRow(7);
			if(!validMonth(rowDate.getCell(9).getDateCellValue())) {
				throw new DataCollectBusinessLogicException("Month invalid");
			}
			List<DcAnlisysFinancialState> dcAnlisysFinancialStateList = new ArrayList<>();
			List<AnalisysFinancialDto> analisysFinancialListDto = excelAnalisys.readModelsAnalisys(sheet);
			analisysFinancialListDto.stream().forEach(data -> {
				DcAnlisysFinancialState analisys = new DcAnlisysFinancialState();
				analisys.setType(data.getType());
				analisys.setNoAccount(data.getNoAccount());
				analisys.setFullyToUpDate(data.getFullyToUpDate());
				analisys.setPastDueAccount3160(data.getPastDueAccount3160());
				analisys.setPastDueAccount6190(data.getPastDueAccount6190());
				analisys.setPastDueAccountsobre90(data.getPastDueAccountsobre90());
				analisys.setQuestionableAccount(data.getQuestionableAccount());		
				analisys.setDateCreate(new Date());
				analisys.setFinancialStateId(id);
				analisys.setNoLine(data.getNoLine());
				Optional<DcAccount> dcAccount = dcAccountRepository.findByNameAndPageAndAccountNumber(data.getType(), "1", data.getNoAccount());
				if(dcAccount.isPresent()) {
					analisys.setDcAccount(dcAccount.get());
					dcAnlisysFinancialStateList.add(analisys);
				}
			});
			return dcAnlisysFinancialStateList;
		} catch(Exception ex) {
			throw new DataCollectBusinessLogicException(ex.getMessage());
		}
	}
	
	private List<NameAccountFinancial> readWorkbookPage1NameAccount(File file, Long id) throws Exception {
		try {
			XSSFSheet sheet = validFile(file, "PAGINA 1", 9);
			
			XSSFRow rowDealer = sheet.getRow(6);
			findDealer(rowDealer);

			XSSFRow rowDate = sheet.getRow(7);
			if(!validMonth(rowDate.getCell(9).getDateCellValue())) {
				throw new DataCollectBusinessLogicException("Month invalid");
			}
			List<NameAccountFinancial> nameAccountFinancial = new ArrayList<>();
			List<NameAccountDto> nameAccountDtoList  = excelNameAccountFinancial.readModelsNameAccount(sheet);
			nameAccountDtoList.stream().forEach(data -> {
				NameAccountFinancial nameAccount = new NameAccountFinancial();
				nameAccount.setNameAccount(data.getNameAccount());
				nameAccount.setNoAccount(data.getNoAccount());
				nameAccount.setCost(data.getCost());
				nameAccount.setAccomulatedDepreciation(data.getAccomulatedDepreciation());
				nameAccount.setImporte(data.getImporte());
				nameAccount.setDateCreate(new Date());
				nameAccount.setFinancialStateId(id);
				nameAccount.setNoLine(data.getNoLine());
				Optional<DcAccount> dcAccount = dcAccountRepository.findByNameAndPageAndAccountNumber(data.getNameAccount(), "1", data.getNoAccount());
				if(dcAccount.isPresent()) {
					nameAccount.setDcAccount(dcAccount.get());
					nameAccountFinancial.add(nameAccount);
				}
			});
			return nameAccountFinancial;
		} catch(Exception ex) {
			throw new DataCollectBusinessLogicException(ex.getMessage());
		}
	}
	
	private List<DcPassiveFinancial> readWorkbookPage1Passive(File file, Long id) throws Exception {
		try {
			XSSFSheet sheet = validFile(file, "PAGINA 1", 9);
			
			XSSFRow rowDealer = sheet.getRow(6);
			findDealer(rowDealer);

			XSSFRow rowDate = sheet.getRow(7);
			if(!validMonth(rowDate.getCell(9).getDateCellValue())) {
				throw new DataCollectBusinessLogicException("Month invalid");
			}
			List<PassiveFinancialDto> passiveFinancialListDto = new ArrayList<>();
			List<DcPassiveFinancial> dcPassiveFinancialList = new ArrayList<>();
			
			passiveFinancialListDto = excelPassiveFinancial.readModelsPassive(sheet);
			
			passiveFinancialListDto.stream().filter(filter -> !filter.getTitle().equals("")).forEach(data -> {
				DcPassiveFinancial dcActive = new DcPassiveFinancial();
				dcActive.setNoAccount(data.getNoAccount());
				dcActive.setImporte(data.getImporte());
				dcActive.setTitle(data.getTitle());
				dcActive.setDateCreate(new Date());
				dcActive.setFinancialStateId(id);
				dcActive.setNoLine(data.getNoLine());
				Optional<DcAccount> dcAccount = dcAccountRepository.findByNameAndPageAndAccountNumber(data.getTitle(), "1", data.getNoAccount());
				if(dcAccount.isPresent()) {
					dcActive.setDcAccount(dcAccount.get());
					dcPassiveFinancialList.add(dcActive);
				}				
			});
			return dcPassiveFinancialList;
		} catch(Exception ex) {
			throw new DataCollectBusinessLogicException(ex.getMessage());
		}
	}
	
	private XSSFSheet validFile(File file, String pageName, int rowNum) throws DataCollectBusinessLogicException, FileNotFoundException, IOException {
		XSSFWorkbook workbook = new XSSFWorkbook(new FileInputStream(file));
		XSSFSheet sheet = workbook.getSheet(pageName);
		if(null == workbook.getSheet(pageName)) {
			throw new DataCollectBusinessLogicException("The file structure is invalid");
		}
		XSSFRow row = sheet.getRow(rowNum);
		if(row == null) {
			throw new DataCollectBusinessLogicException("No data was found on the sheet");
		}
		return sheet;
	}
	
	private DcDealer findDealer(XSSFRow rowDealer) throws DataCollectBusinessLogicException {
		DcDealer dcDealer = new DcDealer();
		String numDealer = getCellString(rowDealer.getCell(0));
		if(numDealer == null || numDealer.trim().equals("")) {
			throw new DataCollectBusinessLogicException("Error to get dealer number.");
		} else {
			numDealer = NumberToTextConverter.toText(rowDealer.getCell(0).getNumericCellValue());
			dcDealer = dcDealerRepository.findOneByDealerNumberIgnoreCase(numDealer);
			if(dcDealer == null)
				throw new DataCollectBusinessLogicException("Dealer not found");
		}
		return dcDealer;
	}
	
	private boolean validMonth(Date date) {
		Calendar cal1 = Calendar.getInstance();
		Calendar cal2 = Calendar.getInstance();
		cal1.setTime(new Date());
		cal2.setTime(date);
		
		return cal1.get(Calendar.MONTH) == cal2.get(Calendar.MONTH) ? true : false;
	}
		
	
	private String getCellString(XSSFCell cell) {
		if(cell == null) {
			return null;
		}
		
		switch(cell.getCellType()) {
		case Cell.CELL_TYPE_NUMERIC:
			return "" + cell.getNumericCellValue() + "".trim().replace(",", "");
		case Cell.CELL_TYPE_STRING:
			return cell.getStringCellValue() + "".trim();
		case Cell.CELL_TYPE_FORMULA:
			return getValueFormula(cell);
		case Cell.CELL_TYPE_BOOLEAN:
			return "" + cell.getBooleanCellValue() + "".trim();
		default:
			return "".trim();
		}
	}
	
	private String getValueFormula(XSSFCell cell) {
		if (cell.getCellType() == Cell.CELL_TYPE_FORMULA) {
		    switch (cell.getCachedFormulaResultType()) {
		        case Cell.CELL_TYPE_BOOLEAN:
		            return cell.getBooleanCellValue() + " ";
		        case Cell.CELL_TYPE_NUMERIC:
		            return cell.getNumericCellValue() + "";
		        case Cell.CELL_TYPE_STRING:
		            return cell.getRichStringCellValue() + "";
		    }
		}
		return "";
	}
	
	@Override
	public List<FinancialActiveDto> getFinancialActive(Long financialId) {
		List<DcActiveFinancial> dcActive = dcActiveRepository.findByFinancialStateIdOrderByNoLineAsc(financialId);
		List<FinancialActiveDto> financialActiveDtoList = new ArrayList<>();
		dcActive.forEach(data -> {
			FinancialActiveDto financialActiveDto = new FinancialActiveDto();
			financialActiveDto.setId(data.getId());
			financialActiveDto.setImporte(data.getImporte());
			financialActiveDto.setNoAccount(data.getNoAccount());
			financialActiveDto.setTitle(data.getTitle());
			financialActiveDto.setNoLine(data.getNoLine());
			financialActiveDtoList.add(financialActiveDto);
		});
		return financialActiveDtoList;
	}

	@Override
	public List<FinancialPassiveDto> getFinancialPassive(Long financialId) {
		List<DcPassiveFinancial> dcPassive = dcPassiveRepository.findByFinancialStateIdOrderByNoLineAsc(financialId);
		List<FinancialPassiveDto> dcPassiveList = new ArrayList<>();
		dcPassive.stream().forEach(data -> {
			FinancialPassiveDto passiveDto = new FinancialPassiveDto();
			passiveDto.setImporte(data.getImporte());
			passiveDto.setNoAccount(data.getNoAccount());
			passiveDto.setTitle(data.getTitle());
			passiveDto.setNoLine(data.getNoLine());
			passiveDto.setId(data.getId());
			dcPassiveList.add(passiveDto);
			
		});
		return dcPassiveList;
	}

	@Override
	public List<AnalisysFinancialDto> getFinancialAnalisys(Long financialId) {
		List<DcAnlisysFinancialState> analisysList = dcAnlisysFinancialStateRepository.findByFinancialStateIdOrderByNoLineAsc(financialId);
		List<AnalisysFinancialDto> analisysListDto = new ArrayList<>();
		analisysList.stream().forEach(data -> {
			AnalisysFinancialDto analisysFinancialDto = new AnalisysFinancialDto();
			analisysFinancialDto.setType(data.getType());
			analisysFinancialDto.setFullyToUpDate(data.getFullyToUpDate());
			analisysFinancialDto.setNoAccount(data.getNoAccount());
			analisysFinancialDto.setPastDueAccount3160(data.getPastDueAccount3160());
			analisysFinancialDto.setPastDueAccount6190(data.getPastDueAccount6190());
			analisysFinancialDto.setPastDueAccountsobre90(data.getPastDueAccountsobre90());
			analisysFinancialDto.setQuestionableAccount(data.getQuestionableAccount());
			analisysFinancialDto.setNoLine(data.getNoLine());
			analisysFinancialDto.setId(data.getId());
			analisysListDto.add(analisysFinancialDto);
		});
		return analisysListDto;
	}

	@Override
	public List<NameAccountDto> getFinancialNameAccount(Long financialId) {
		List<NameAccountFinancial> analisysList = dcNameAccountFinancialRepository.findByFinancialStateIdOrderByNoLineAsc(financialId);
		List<NameAccountDto> nameAccountListDto = new ArrayList<>();
		analisysList.stream().forEach(data -> {
			NameAccountDto nameAccountDto = new NameAccountDto();
			nameAccountDto.setAccomulatedDepreciation(data.getAccomulatedDepreciation());
			nameAccountDto.setCost(data.getCost());
			nameAccountDto.setImporte(data.getImporte());
			nameAccountDto.setNameAccount(data.getNameAccount());
			nameAccountDto.setNoAccount(data.getNoAccount());
			nameAccountDto.setNoLine(data.getNoLine());
			nameAccountDto.setId(data.getId());
			nameAccountListDto.add(nameAccountDto);
		});
		return nameAccountListDto;
	}

	@Override
	public List<PerMonthFinancialDto> getPerMonthFinancial(Long financialId) {
		List<DcPerMounthFinancialState> analisysList = dcPerMounthFinancialStateRepository.findByFinancialStateIdOrderByNoLineAsc(financialId);
		List<PerMonthFinancialDto> perMonthFinancialListDto = new ArrayList<>();
		analisysList.stream().forEach(data -> {
			PerMonthFinancialDto perMonthFinancialDto = new PerMonthFinancialDto();
			perMonthFinancialDto.setMonth(data.getMonth());
			perMonthFinancialDto.setNewOthers(data.getNewOthers());
			perMonthFinancialDto.setProfitOrLoss(data.getProfitOrLoss());
			perMonthFinancialDto.setUnitHonda(data.getUnitHonda());
			perMonthFinancialDto.setUnitUsedRetail(data.getUnitUsedRetail());
			perMonthFinancialDto.setUnitUsedWholesale(data.getUnitUsedWholesale());
			perMonthFinancialDto.setId(data.getId());
			perMonthFinancialDto.setNoLine(data.getNoLine());
			perMonthFinancialListDto.add(perMonthFinancialDto);
		});
		return perMonthFinancialListDto;
	}
	
	@Override
	public List<Page2and3FinancialDto> getIncomeAndExpesesPage3(Long financialId) {
		List<DcPageTwoFinancial> dcPageTwoFinancial = dcPageTwoFinancialRepository.findByFinancialStateIdOrderByNoLineAsc(financialId);
		List<Page2and3FinancialDto> page2and3FinancialListDto = new ArrayList<>();
		dcPageTwoFinancial.stream().forEach(data -> {
			Page2and3FinancialDto page2and3FinancialDto = new Page2and3FinancialDto();
			page2and3FinancialDto.setId(data.getId());
			page2and3FinancialDto.setNameAccount(data.getNameAccount());
			page2and3FinancialDto.setNoAccount(data.getNoAccount());
			page2and3FinancialDto.setTotalIncomeExpensesPerMonth(data.getTotalIncomeExpenses());
			page2and3FinancialDto.setGrossProfit(data.getGrossProfit());
			page2and3FinancialDto.setNewHondaMonth(data.getNewHondaMonth());
			page2and3FinancialDto.setNewOthersMonth(data.getNewOthersMonth());
			page2and3FinancialDto.setUsedMonth(data.getUsedMonth());
			page2and3FinancialDto.setDeptoService(data.getDeptoService());
			page2and3FinancialDto.setDeptoWorkshop(data.getDeptoWorkshop());
			page2and3FinancialDto.setSpareParts(data.getSpareParts());
			page2and3FinancialDto.setId(data.getId());
			page2and3FinancialDto.setNoLine(data.getNoLine());
			page2and3FinancialListDto.add(page2and3FinancialDto);
		});
		return page2and3FinancialListDto;
	}

	@Override
	public List<Page2and3PositionFinancialDto> getPositionPage3(Long financialId) {
		List<DcPositionPage2Financial> dcPositionPage2FinancialList = dcPositionPage2FinancialRepository.findByFinancialStateIdOrderByIdDesc(financialId);
		List<Page2and3PositionFinancialDto> page2and3PositionFinancialListDto = new ArrayList<>();
		dcPositionPage2FinancialList.stream().forEach(data -> {
			Page2and3PositionFinancialDto page2and3PositionFinancialDto = new Page2and3PositionFinancialDto();
			page2and3PositionFinancialDto.setPosition(data.getPosition());
			page2and3PositionFinancialDto.setColumnA(data.getColumnA());
			page2and3PositionFinancialDto.setColumnB(data.getColumnB());
			page2and3PositionFinancialDto.setColumnC(data.getColumnC());
			page2and3PositionFinancialDto.setColumnD(data.getColumnD());
			page2and3PositionFinancialDto.setColumnE(data.getColumnE());
			page2and3PositionFinancialDto.setColumnF(data.getColumnF());
			page2and3PositionFinancialDto.setTotal(data.getTotal());
			page2and3PositionFinancialDto.setId(data.getId());
			page2and3PositionFinancialListDto.add(page2and3PositionFinancialDto);
		});
		return page2and3PositionFinancialListDto;
	}

	@Override
	public List<OtherIncomeDto> getOtherIncomePage3(Long financialId) {
		List<DcOtherIncome> dcOtherIncomeList = dcOtherIncomeRepository.findByFinancialStateIdOrderByIdDesc(financialId);
		List<OtherIncomeDto> otherIncomeListDto = new ArrayList<>();
		dcOtherIncomeList.stream().forEach(data -> {
			OtherIncomeDto otherIncomeDto = new OtherIncomeDto();
			otherIncomeDto.setNameAccount(data.getNameAccount());
			otherIncomeDto.setNoAccount(data.getNoAccount());
			otherIncomeDto.setMonth(data.getMonth());
			otherIncomeDto.setId(data.getId());
			otherIncomeListDto.add(otherIncomeDto);
		});
		return otherIncomeListDto;
	}

	@Override
	public List<IncomeDeductionDto> getIncomeDeductionPage3(Long financialId) {
		List<DcIncomeDeduction> dcIncomeDeductionList = dcIncomeDeductionRepository.findByFinancialStateIdOrderByIdDesc(financialId);
		List<IncomeDeductionDto> incomeDeductionListDto = new ArrayList<>();
		dcIncomeDeductionList.stream().forEach(data -> {
			IncomeDeductionDto incomeDeductionDto = new IncomeDeductionDto();
			incomeDeductionDto.setNameAccount(data.getNameAccount());
			incomeDeductionDto.setNoAccount(data.getNoAccount());
			incomeDeductionDto.setMonth(data.getMonth());
			incomeDeductionDto.setId(data.getId());
			incomeDeductionListDto.add(incomeDeductionDto);
		});
		
		return incomeDeductionListDto;
	}

	@Override
	public List<GrossProfitPage4Dto> getIncomeAndExpensesPage4(Long financialId) {
		List<DcGrossProfitAnalysis> dcGrossProfitAnalysisList = dcGrossProfitAnalysisRepository.findByFinancialStateIdOrderByNoLineAsc(financialId);
		List<GrossProfitPage4Dto> grossProfitPage4ListDto = new ArrayList<>();
		dcGrossProfitAnalysisList.stream().forEach(data -> {
			GrossProfitPage4Dto grossProfitPage4Dto = new GrossProfitPage4Dto();
			grossProfitPage4Dto.setDeptoCarNewCurrentMonth(data.getDeptoVehicleCurrentMonth());
			grossProfitPage4Dto.setGrossProfitCurrentMonth(data.getGrossProfitCurrentMonth());
			grossProfitPage4Dto.setSalesCurrentMonth(data.getSalesCurrentMonth());
			grossProfitPage4Dto.setSoldUnistCurrentMonth(data.getSoldCurrentMonth());
			grossProfitPage4Dto.setUnitCurrentMonth(data.getUnitCurrentMonth());
			grossProfitPage4Dto.setNoLine(data.getNoLine());
			grossProfitPage4Dto.setId(data.getId());
			grossProfitPage4ListDto.add(grossProfitPage4Dto);
		});
		return grossProfitPage4ListDto;
	}

	@Override
	public FinancialStateDto getInformation() {
		Optional<DcFinancialState> dcFinancialState = repository.findById(349L);
		FinancialStateDto financialStateDto = new FinancialStateDto();
		if(dcFinancialState.isPresent()) {
			DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
			financialStateDto.setCity(dcFinancialState.get().getDealer().getDcCityId().getName());
			financialStateDto.setDealerNumber(dcFinancialState.get().getDealer().getDealerNumber());
			financialStateDto.setPeriodFrom(null);
			financialStateDto.setPeriodTo(df.format(dcFinancialState.get().getLimitDate()));
			financialStateDto.setState(dcFinancialState.get().getDealer().getDcCityId().getDcStateId().getName());
			financialStateDto.setZip(dcFinancialState.get().getDealer().getZipCode());
		}
		return financialStateDto;
	}
	
	@Override
	public void updateActive(FinancialActiveDto dcPerMounthFinancialState) {
		Optional<DcActiveFinancial> perMonth = dcActiveRepository.findById(dcPerMounthFinancialState.getId());
		if(perMonth.isPresent()) {
			perMonth.get().setImporte(dcPerMounthFinancialState.getImporte());
			dcActiveRepository.save(perMonth.get());
		}
	}
	
	@Override
	public void updatePassive(FinancialPassiveDto financialPassiveDto) {
		Optional<DcPassiveFinancial> dcPassive = dcPassiveRepository.findById(financialPassiveDto.getId());
		if(dcPassive.isPresent()) {
			dcPassive.get().setImporte(financialPassiveDto.getImporte());
			dcPassiveRepository.save(dcPassive.get());
		}
	}

	@Override
	public void updateOtherActiveFinancial(NameAccountDto nameAccountDto) {
		Optional<NameAccountFinancial> dcOtherActive = dcNameAccountFinancialRepository.findById(nameAccountDto.getId());
		if(dcOtherActive.isPresent()) {
			dcOtherActive.get().setImporte(nameAccountDto.getImporte());
			dcOtherActive.get().setCost(nameAccountDto.getCost());
			dcOtherActive.get().setAccomulatedDepreciation(nameAccountDto.getAccomulatedDepreciation());
			dcNameAccountFinancialRepository.save(dcOtherActive.get());
		}
	}
	
	@Override
	public void updateOtherPassiveFinancial(PerMonthFinancialDto perMonthFinancialDto) {
		Optional<DcPerMounthFinancialState> dcOtherActive = dcPerMounthFinancialStateRepository.findById(perMonthFinancialDto.getId());
		if(dcOtherActive.isPresent()) {
			dcOtherActive.get().setNewOthers(perMonthFinancialDto.getNewOthers());
			dcOtherActive.get().setProfitOrLoss(perMonthFinancialDto.getProfitOrLoss());
			dcOtherActive.get().setUnitHonda(perMonthFinancialDto.getUnitHonda());
			dcOtherActive.get().setUnitUsedRetail(perMonthFinancialDto.getUnitUsedRetail());
			dcOtherActive.get().setUnitUsedWholesale(perMonthFinancialDto.getUnitUsedWholesale());
			dcPerMounthFinancialStateRepository.save(dcOtherActive.get());
		}
	}
	
	@Override
	public void updateAnalisysFinancial(AnalisysFinancialDto analisysFinancialDto) {
		Optional<DcAnlisysFinancialState> dcAnalisys = dcAnlisysFinancialStateRepository.findById(analisysFinancialDto.getId());
		if(dcAnalisys.isPresent()) {
			dcAnalisys.get().setFullyToUpDate(analisysFinancialDto.getFullyToUpDate());
			dcAnalisys.get().setPastDueAccount3160(analisysFinancialDto.getPastDueAccount3160());
			dcAnalisys.get().setPastDueAccount6190(analisysFinancialDto.getPastDueAccount6190());
			dcAnalisys.get().setPastDueAccountsobre90(analisysFinancialDto.getPastDueAccountsobre90());
			dcAnalisys.get().setQuestionableAccount(analisysFinancialDto.getQuestionableAccount());
			dcAnlisysFinancialStateRepository.save(dcAnalisys.get());
		}
	}

	@Override
	public void getIncomeAndExpesesPage3(Page2and3FinancialDto page2and3FinancialDto) {
		Optional<DcPageTwoFinancial> dcPageTwoFinancial = dcPageTwoFinancialRepository.findById(page2and3FinancialDto.getId());
		if(dcPageTwoFinancial.isPresent()) {
			dcPageTwoFinancial.get().setDeptoService(page2and3FinancialDto.getDeptoService());
			dcPageTwoFinancial.get().setDeptoWorkshop(page2and3FinancialDto.getDeptoWorkshop());
			dcPageTwoFinancial.get().setGrossProfit(page2and3FinancialDto.getGrossProfit());
			dcPageTwoFinancial.get().setNewHondaMonth(page2and3FinancialDto.getNewHondaMonth());
			dcPageTwoFinancial.get().setNewOthersMonth(page2and3FinancialDto.getNewOthersMonth());
			dcPageTwoFinancial.get().setSpareParts(page2and3FinancialDto.getSpareParts());
			dcPageTwoFinancial.get().setTotalIncomeExpenses(page2and3FinancialDto.getTotalIncomeExpensesPerMonth());
			dcPageTwoFinancial.get().setUsedMonth(page2and3FinancialDto.getUsedMonth());
			dcPageTwoFinancialRepository.save(dcPageTwoFinancial.get());
		}		
	}

	@Override
	public void getPositionPage3(Page2and3PositionFinancialDto page2and3PositionFinancialDto) {
		System.out.println(page2and3PositionFinancialDto.getId());
		Optional<DcPositionPage2Financial> dcPositionPage2Financial = dcPositionPage2FinancialRepository.findById(page2and3PositionFinancialDto.getId());
		if(dcPositionPage2Financial.isPresent()) {
			dcPositionPage2Financial.get().setColumnA(page2and3PositionFinancialDto.getColumnA());
			dcPositionPage2Financial.get().setColumnB(page2and3PositionFinancialDto.getColumnB());
			dcPositionPage2Financial.get().setColumnC(page2and3PositionFinancialDto.getColumnC());
			dcPositionPage2Financial.get().setColumnD(page2and3PositionFinancialDto.getColumnD());
			dcPositionPage2Financial.get().setColumnE(page2and3PositionFinancialDto.getColumnE());
			dcPositionPage2Financial.get().setColumnF(page2and3PositionFinancialDto.getColumnF());
			dcPositionPage2Financial.get().setTotal(page2and3PositionFinancialDto.getTotal());
			System.out.println(dcPositionPage2Financial.get().getColumnA());
			dcPositionPage2FinancialRepository.save(dcPositionPage2Financial.get());
		}		
	}

	@Override
	public void updateOtherIncomePage3(OtherIncomeDto otherIncomeDto) {
		Optional<DcOtherIncome> dcOtherIncome = dcOtherIncomeRepository.findById(otherIncomeDto.getId());
		if(dcOtherIncome.isPresent()) {
			dcOtherIncome.get().setMonth(otherIncomeDto.getMonth());
			dcOtherIncomeRepository.save(dcOtherIncome.get());
		}		
	}

	@Override
	public void updateIncomeDeductionPage3(IncomeDeductionDto incomeDeductionDto) {
		Optional<DcIncomeDeduction> dcIncomeDeduction = dcIncomeDeductionRepository.findById(incomeDeductionDto.getId());
		if(dcIncomeDeduction.isPresent()) {
			dcIncomeDeduction.get().setMonth(incomeDeductionDto.getMonth());
			dcIncomeDeductionRepository.save(dcIncomeDeduction.get());		
		}	
	}

	@Override
	public void updateIncomeAndExpensesPage4(GrossProfitPage4Dto grossProfitPage4Dto) {
		Optional<DcGrossProfitAnalysis> dcGrossProfitAnalysis = dcGrossProfitAnalysisRepository.findById(grossProfitPage4Dto.getId());
		if(dcGrossProfitAnalysis.isPresent()) {
			dcGrossProfitAnalysis.get().setDeptoVehicleCurrentMonth(grossProfitPage4Dto.getDeptoCarNewCurrentMonth());
			dcGrossProfitAnalysis.get().setGrossProfitCurrentMonth(grossProfitPage4Dto.getGrossProfitCurrentMonth());
			dcGrossProfitAnalysis.get().setSalesCurrentMonth(grossProfitPage4Dto.getSalesCurrentMonth());
			dcGrossProfitAnalysis.get().setSoldCurrentMonth(grossProfitPage4Dto.getSoldUnistCurrentMonth());
			dcGrossProfitAnalysis.get().setUnitCurrentMonth(grossProfitPage4Dto.getUnitCurrentMonth());
			dcGrossProfitAnalysisRepository.save(dcGrossProfitAnalysis.get());
		}
	}
}
