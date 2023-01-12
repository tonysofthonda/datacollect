package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.model.entity.*;
import com.honda.hdm.datacollect.model.entity.comm.EmailInstance;
import com.honda.hdm.datacollect.model.entity.dto.*;
import com.honda.hdm.datacollect.model.enums.EvaluationAreaEnum;
import com.honda.hdm.datacollect.model.enums.FinancialStateStatusEnum;
import com.honda.hdm.datacollect.model.enums.NotificationsEnum;
import com.honda.hdm.datacollect.model.exception.DataCollectBusinessLogicException;
import com.honda.hdm.datacollect.repository.DcAccountValueRepository;
import com.honda.hdm.datacollect.repository.DcDealerRepository;
import com.honda.hdm.datacollect.repository.DcFinancialStateRepository;
import com.honda.hdm.datacollect.repository.DcFinancialStateXAccountValueRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.converter.ModelConverter;
import com.honda.hdm.datacollect.service.domain.*;
import com.honda.hdm.datacollect.service.util.Helpers;
import com.honda.hdm.datacollect.service.util.MailSenderService;
import com.honda.hdm.datacollect.model.enums.*;

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
    private DcAccountValueRepository dcAccountValueRepository;
    
    @Autowired
    private DcFinancialStateXAccountValueRepository dcFinancialStateXAccountValueRepository;

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
        return filterFinancialState(dealerGroupId, dealerId, year, month, statusId, pageable).map(dtoConverter::convertFinancialStateMin);
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
	
	private List<?> processWorkbook(File file, Long id) throws DataCollectBusinessLogicException {
		List<PasiveDto> models = null;
		try {
			models = processWorkbookExcel(file);
			if(models == null || models.isEmpty()) {
				throw new DataCollectBusinessLogicException("Not found data");
			}
			
			return mapExcelToEntity(models, id);
		} catch(Exception ex) {
			throw new DataCollectBusinessLogicException(ex.getMessage());
		}
	}
	
	private List<?> mapExcelToEntity(List<PasiveDto> passiveListDto, Long id) {
		List<?> modelError = new ArrayList<>();
		
		Optional<DcFinancialState> financialState = repository.findById(id);
		if(!financialState.isPresent()) {
			throw new NullPointerException("Not found financial state");
		}
		
		List<DcFinancialStateXAccountValue> dcAccountValue = new ArrayList<>();
		for(PasiveDto passiveDto : passiveListDto) {
			if(!passiveDto.getSubtitle().trim().equals("")) {
				DcFinancialStateXAccountValue dcValue = saveFinancialAndAccount(passiveDto, financialState.get());
				if(dcValue != null) {
					dcAccountValue.add(dcValue);
				}
			}
		}
		
		if(!dcAccountValue.isEmpty())
			dcFinancialStateXAccountValueRepository.saveAll(dcAccountValue);

		return modelError;
		
	}
	
	private DcFinancialStateXAccountValue saveFinancialAndAccount(PasiveDto passiveDto, DcFinancialState financialState) {
		DcAccountValue dc = findDcAccount(passiveDto.getSubtitle().trim(), passiveDto.getHeader().trim(), passiveDto.getPage(), passiveDto.getNoAccount(), passiveDto.getParent());
		DcFinancialStateXAccountValue value = null;
		if(dc != null) {
			DcFinancialStateXAccountValue dcValue = dcFinancialStateXAccountValueRepository.findByAccountValueAndFinancialState(dc.getId(), financialState.getId());
			if(dcValue == null) {
				value = new DcFinancialStateXAccountValue();
				value.setAccountValue(dc);
				value.setFinancialState(financialState);
				value.setValue(passiveDto.getValue() == null || passiveDto.getValue().trim().equals("") ? "0" : passiveDto.getValue());
				return value;
			} else {
				dcValue.setValue(passiveDto.getValue() == null || passiveDto.getValue().trim().equals("") ? "0" : passiveDto.getValue());
				return dcValue;
			}
		}
		return value;
	}
	
	/**
	 * Processes the file parameter (validates and generates a list of entities)
	 * @param file
	 * @return
	 */
	public List<PasiveDto> processWorkbookExcel(File file) throws Exception {
		if(file == null) {
			throw new NullPointerException("File is invalid");
		}
		
		List<PasiveDto> passiveDto = new ArrayList<>();
		passiveDto.addAll(readWorkbookPage1(file));
		passiveDto.addAll(readModelsPage2And3(validFile(file, "PAGINA 2 Y 3", 9)));
		passiveDto.addAll(readModelsPage4(validFile(file, "PAGINA 4", 9)));
		return passiveDto;		
	}
	
	
	private List<PasiveDto> readWorkbookPage1(File file) throws Exception {
		try {
			XSSFSheet sheet = validFile(file, "PAGINA 1", 9);
			
			XSSFRow rowDealer = sheet.getRow(6);
			findDealer(rowDealer);

			XSSFRow rowDate = sheet.getRow(7);
			if(!validMonth(rowDate.getCell(9).getDateCellValue())) {
				throw new DataCollectBusinessLogicException("Month invalid");
			}
			return readModels(sheet);
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
	
	private List<PasiveDto> readModelsPage4(XSSFSheet sheet) throws ParseException {
		List<PasiveDto> models = new ArrayList<>();
		int index = 10; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(10);
		List<PasiveDto> model = new ArrayList<>();
		while(row != null) {
			model = readModelPage4(row);
			row = sheet.getRow(++index);
			//Error null row
			if(row.getRowNum() == 75) {
				break;
			}
			
			if(model != null) {
				models.addAll(model);
			}
		}
		return models;
	}
	
	private List<PasiveDto> readModelsPage2And3(XSSFSheet sheet) throws ParseException {
		List<PasiveDto> models = new ArrayList<>();
		int index = 10; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(10);
		List<PasiveDto> model = new ArrayList<>();
		while(row != null) {
			model = readModelPage2And3(row);
			row = sheet.getRow(++index);
			if(row.getRowNum() == 78) {
				break;
			}
			
			if(model != null) {
				models.addAll(model);
			}
		}
		return models;
	}
	
	private List<PasiveDto> readModels(XSSFSheet sheet) throws ParseException {
		List<PasiveDto> models = new ArrayList<>();
		int index = 10; //We start in 1 because 0 is the header row
		XSSFRow row = sheet.getRow(10);
		List<PasiveDto> model = new ArrayList<>();
		while(row != null) {
			model = readModel(row);
			row = sheet.getRow(++index);
			if(row != null && row.getRowNum() == 87) {
				break;
			}
			
			if(model != null) {
				models.addAll(model);
			}
		}
		return models;
	}
	
	private List<PasiveDto> readModelPage4(XSSFRow modelRow) throws ParseException {
		List<PasiveDto> passiveListDto = new ArrayList<>();
		
		XSSFCell cell = modelRow.getCell(Page4.F.getColumn());
		XSSFCell value = modelRow.getCell(Page4.B.getColumn());
		XSSFCell account = modelRow.getCell(Page4.G.getColumn());
		passiveListDto.add(new PasiveDto("Unidades", getCellString(cell), getCellString(value), getCellString(account), "4", "Mes Actual"));
		
		value = modelRow.getCell(Page2And3Enum.C.getColumn());
		passiveListDto.add(new PasiveDto("Ventas", getCellString(cell), getCellString(value), getCellString(account), "4", "Mes Actual"));
		
		value = modelRow.getCell(Page2And3Enum.D.getColumn());
		passiveListDto.add(new PasiveDto("Utilidad bruta", getCellString(cell), getCellString(value), getCellString(account), "4", "Mes Actual"));
		
		value = modelRow.getCell(Page2And3Enum.E.getColumn());
		passiveListDto.add(new PasiveDto("% unidades vendidas", getCellString(cell), getCellString(value), getCellString(account), "4", "Mes Actual"));

		return passiveListDto;
	}
	
	private List<PasiveDto> readModelPage2And3(XSSFRow modelRow) throws ParseException {
		List<PasiveDto> passiveListDto = new ArrayList<>();
		
		XSSFCell cell = modelRow.getCell(Page2And3Enum.B.getColumn());
		XSSFCell value = modelRow.getCell(Page2And3Enum.D.getColumn());
		XSSFCell account = modelRow.getCell(Page2And3Enum.C.getColumn());
		passiveListDto.add(new PasiveDto("Mes", getCellString(cell), getCellString(value), getCellString(account), "2 y 3", "Total de ingresos y egresos de la concesionaria"));
		
		value = modelRow.getCell(Page2And3Enum.E.getColumn());
		passiveListDto.add(new PasiveDto("GANANCIAS BRUTAS VENTAS %", getCellString(cell), getCellString(value), getCellString(account), "2 y 3", "Total de ingresos y egresos de la concesionaria"));
		
		value = modelRow.getCell(Page2And3Enum.F.getColumn());
		passiveListDto.add(new PasiveDto("Mes", getCellString(cell), getCellString(value), getCellString(account), "2 y 3", "A Depto Hond Nuevos"));
		
		value = modelRow.getCell(Page2And3Enum.G.getColumn());
		passiveListDto.add(new PasiveDto("Mes", getCellString(cell), getCellString(value), getCellString(account), "2 y 3", "B Otros Vehículos Nuevos"));
		
		value = modelRow.getCell(Page2And3Enum.H.getColumn());
		passiveListDto.add(new PasiveDto("Mes", getCellString(cell), getCellString(value), getCellString(account), "2 y 3", "C Depto Vehículos Usados"));
		
		value = modelRow.getCell(Page2And3Enum.I.getColumn());
		passiveListDto.add(new PasiveDto("Mes", getCellString(cell), getCellString(value), getCellString(account), "2 y 3", "D Depto de servicios"));
		
		value = modelRow.getCell(Page2And3Enum.J.getColumn());
		passiveListDto.add(new PasiveDto("Mes", getCellString(cell), getCellString(value), getCellString(account), "2 y 3", "E Depto taller y carroceria"));
		
		value = modelRow.getCell(Page2And3Enum.K.getColumn());
		passiveListDto.add(new PasiveDto("Mes", getCellString(cell), getCellString(value), getCellString(account), "2 y 3", "F Depto refacc y accesorios"));

		return passiveListDto;
	}
	
	private List<PasiveDto> readModel(XSSFRow modelRow) throws ParseException {
		List<PasiveDto> passiveListDto = new ArrayList<>();
		XSSFCell cellNoLine = modelRow.getCell(PasiveEnum.NO_LINE.getColumn());
		Long noLine = null;
		if(isNumeric(getCellString(cellNoLine)))
			noLine = new BigDecimal(getCellString(cellNoLine)).longValue();
		if(modelRow.getRowNum() < 79 && noLine != null) {
			XSSFCell cell = modelRow.getCell(PasiveEnum.PASIVOS.getColumn());
			XSSFCell cellImport1 = modelRow.getCell(PasiveEnum.IMPORT.getColumn());
			Double importe1 = getCellString(cellImport1) == null || getCellString(cellImport1).trim().equals("") ? 0.0 : Double.valueOf(getCellString(cellImport1));
			if(getCellString(cell).equals("CUENTAS POR PAGAR") || getCellString(cell).trim().equals("") ||
					getCellString(cell).equals("CAPITAL DE TRABAJO NETO")) {
				XSSFCell cellBetween = modelRow.getCell(PasiveEnum.PASIVOS_BETWEEN.getColumn());
				XSSFCell account = modelRow.getCell(PasiveEnum.ACCOUNTNO.getColumn());
				passiveListDto.add(new PasiveDto("Importe", getCellString(cellBetween), importe1 + "", getCellString(account), "1", null));
			} else {
				XSSFCell cellImport = modelRow.getCell(PasiveEnum.IMPORT.getColumn());
				Double importe = getCellString(cellImport) == null || getCellString(cellImport).trim().equals("") ? 0.0 : Double.valueOf(getCellString(cellImport));
				if(noLine >= 49 && noLine <= 61) {
					passiveListDto.addAll(unitPerMonth(modelRow));
				} else {
					XSSFCell account = modelRow.getCell(PasiveEnum.ACCOUNTNO.getColumn());
					passiveListDto.add(new PasiveDto("Importe", getCellString(cell), importe + "", getCellString(account), "1", null));
				}
			}
		} else {
			passiveListDto.addAll(analysisAccount(modelRow));
		}
		
		return passiveListDto;
	}
	
	private boolean isNumeric(String s) {
        if (s == null || s.equals("")) {
            return false;
        }
 
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            if ((c < '0' || c > '9') && c != '.') {
                return false;
            }
        }
        return true;
    }
	
	private List<PasiveDto> unitPerMonth(XSSFRow modelRow) {
		XSSFCell month = modelRow.getCell(PasiveEnum.PASIVOS.getColumn());
		XSSFCell cellBetween = modelRow.getCell(PasiveEnum.PASIVOS_BETWEEN.getColumn());
		XSSFCell account = modelRow.getCell(PasiveEnum.ACCOUNTNO.getColumn());
		List<PasiveDto> passiveListDto = new ArrayList<>();
		passiveListDto.add(new PasiveDto("Unidades Honda", getCellString(month), getCellString(cellBetween) + "", getCellString(account), "1", null));
		cellBetween = modelRow.getCell(PasiveEnum.NEW1.getColumn());
		passiveListDto.add(new PasiveDto("Nuevas Otras", getCellString(month), getCellString(cellBetween) + "", getCellString(account), "1", null));
		cellBetween = modelRow.getCell(PasiveEnum.NEW2.getColumn());
		passiveListDto.add(new PasiveDto("Menudeo", getCellString(month), getCellString(cellBetween) + "", getCellString(account), "1", null));
		cellBetween = modelRow.getCell(PasiveEnum.NEW3.getColumn());
		passiveListDto.add(new PasiveDto("Mayoreo", getCellString(month), getCellString(cellBetween) + "", getCellString(account), "1", null));
		cellBetween = modelRow.getCell(PasiveEnum.ACCOUNTNO.getColumn());
		passiveListDto.add(new PasiveDto("Utilidad o perdida", getCellString(month), getCellString(cellBetween) + "", getCellString(account), "1", null));
		
		return passiveListDto;
	}
	
	private List<PasiveDto> analysisAccount(XSSFRow modelRow) {
		XSSFCell b1 = modelRow.getCell(PasiveEnum.B1.getColumn());
		XSSFCell e1 = modelRow.getCell(PasiveEnum.E1.getColumn());
		XSSFCell f1 = modelRow.getCell(PasiveEnum.F1.getColumn());
		XSSFCell g1 = modelRow.getCell(PasiveEnum.G1.getColumn());
		XSSFCell i1 = modelRow.getCell(PasiveEnum.I1.getColumn());
		XSSFCell k1 = modelRow.getCell(PasiveEnum.K1.getColumn());
		XSSFCell m1 = modelRow.getCell(PasiveEnum.ACCOUNTNO.getColumn());
		
		List<PasiveDto> passiveListDto = new ArrayList<>();
		passiveListDto.add(new PasiveDto("Total al corriente", getCellString(b1), getCellString(f1), getCellString(e1), "1", null));
		passiveListDto.add(new PasiveDto("31-60", getCellString(b1), getCellString(g1), getCellString(e1), "1", null));
		passiveListDto.add(new PasiveDto("61-90", getCellString(b1), getCellString(i1), getCellString(e1), "1", null));
		passiveListDto.add(new PasiveDto("Sobre 90", getCellString(b1), getCellString(k1), getCellString(e1), "1", null));
		passiveListDto.add(new PasiveDto("Cuentas dudosas", getCellString(b1), getCellString(m1), getCellString(e1), "1", null));
		
		return passiveListDto;
	}
		
	private DcAccountValue findDcAccount(String subtitle, String header, String page, String accountNumber, String parent) {
		DcAccountValue dcAccountValue = new DcAccountValue();
		if(parent == null) {
			if(accountNumber == null || accountNumber.trim().equals("")) {
				dcAccountValue = dcAccountValueRepository.findByAccountNameAndTypeAccountValueNameAndAccountPageAndAccountAccountNumberIsNull(subtitle, header, page);
			} else {
				dcAccountValue = dcAccountValueRepository.findByAccountNameAndTypeAccountValueNameAndAccountPageAndAccountAccountNumber(subtitle, header, page, accountNumber);
			}
		} else {
			
			dcAccountValue = dcAccountValueRepository.findByAccountNameAndTypeAccountValueNameAndAccountPageAndAccountAccountNumberAndTypeAccountValueTypeAccountParentTypeAccountParentName(subtitle, header, page, accountNumber, parent);
			if(dcAccountValue != null)
				return dcAccountValue;
		}
		return dcAccountValue;
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
}
