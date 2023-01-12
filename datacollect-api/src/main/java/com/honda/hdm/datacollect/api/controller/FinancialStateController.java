package com.honda.hdm.datacollect.api.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.honda.hdm.datacollect.model.entity.DcDealer;
import com.honda.hdm.datacollect.model.entity.dto.*;
import com.honda.hdm.datacollect.model.enums.FinancialStateStatusEnum;
import com.honda.hdm.datacollect.model.exception.DataCollectBusinessLogicException;
import com.honda.hdm.datacollect.response.FriendlyError;
import com.honda.hdm.datacollect.service.domain.IDcDealerService;
import com.honda.hdm.datacollect.service.domain.IDcFinancialStateService;
import com.honda.hdm.datacollect.service.domain.IDcFinancialStateStatusService;
import com.honda.hdm.datacollect.service.domain.IDcFinancialStateXAccountValueService;
import com.honda.hdm.datacollect.service.domain.impl.DcAccountErrorService;
import com.honda.hdm.datacollect.service.util.Helpers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/financial-state")
public class FinancialStateController {

    @Autowired
    IDcFinancialStateService financialStateService;

    @Autowired
    IDcFinancialStateStatusService statusService;

    @Autowired
    IDcFinancialStateXAccountValueService valueService;

    @Autowired
    DcAccountErrorService errorService;

    @Autowired
    IDcDealerService dealerService;

    @Autowired
    ObjectMapper mapper;

    @GetMapping("/list")
    public ResponseEntity<?> listFinancialStates(
            @RequestParam(name = "page", defaultValue = "0") Integer page,
            @RequestParam(name = "elementsByPage", defaultValue = "10") Integer elementsByPage,
            @RequestParam(required = false) BigDecimal dealerGroupId, @RequestParam(required = false) Long dealerId,
            @RequestParam(required = false) Integer year, @RequestParam(required = false) Integer month,
            @RequestParam(required = false) Long statusId
    ){
        return new ResponseEntity<>(financialStateService.filterFinancialStateDto(dealerGroupId, dealerId, year, month, statusId, PageRequest.of(page, elementsByPage)), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getFinancialState(@PathVariable Long id) {
        DcFinancialStateDto financialState = financialStateService.findOneDto(id);
        if (financialState == null) {
            Model response = new ExtendedModelMap();
            response.addAttribute("friendlyError", new FriendlyError("Financial state not found", "warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(financialState, HttpStatus.OK);
    }

    @GetMapping("/last-month-total-units-passives/{id}")
    public ResponseEntity<?> getLastMontTotalUnitsPassives(@PathVariable Long id){
        return new ResponseEntity<>(valueService.findLastMontTotalUnitsPassivesDto(id),HttpStatus.OK);
    }

    @GetMapping("/historical-page-4/{id}")
    public ResponseEntity<?> getHistoricalPage4(@PathVariable Long id){
        return new ResponseEntity<>(valueService.findHistoricalPage4Dto(id),HttpStatus.OK);
    }

    @GetMapping("/historical-page-2-3/{id}")
    public ResponseEntity<?> getHistoricalPage2and3(@PathVariable Long id){
        return new ResponseEntity<>(valueService.findHistoricalPage2and3Dto(id),HttpStatus.OK);
    }


    @GetMapping("/last-errors-of-evaluation/{id}")
    public ResponseEntity<?> getLastErrorsOfEvaluation(@PathVariable Long id){
        return new ResponseEntity<>(errorService.findLastErrorsSelectedDto(id),HttpStatus.OK);
    }

    @PostMapping("/values/save/{id}")
    public ResponseEntity<?> saveFinancialStateValues(@PathVariable Long id, @RequestBody List<DcFinancialStateXAccountValueDto> values) {
        List<DcFinancialStateXAccountValueDto> newValues = valueService.saveFinancialStateValuesDto(values, id);
        Model response = new ExtendedModelMap();
        if(newValues == null){
            response.addAttribute("msg","This financial state doesn't exist");
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        DcFinancialStateDto financialState = financialStateService.findOneDto(id);
        DcFinancialStateStatusDto inProgress = statusService.findByNameDto(FinancialStateStatusEnum.IN_PROGRESS.toString());
        financialState = financialStateService.addStatusDto(inProgress,financialState, null, null);
        financialState.setAccountValues(newValues);
        response.addAttribute("msg","Values added successfully");
        response.addAttribute("financialState",financialState);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @PostMapping("/send/{id}")
    public ResponseEntity<?> sendFinancialState(@PathVariable Long id, @RequestBody List<DcFinancialStateXAccountValueDto> values){
        Model response = new ExtendedModelMap();
        DcFinancialStateDto financialState = financialStateService.findOneDto(id);
        if (financialState == null){
            response.addAttribute("msg","This financial state doesn't exist");
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        List<DcFinancialStateXAccountValueDto> newValues = valueService.saveFinancialStateValuesDto(values, id);
        DcFinancialStateStatusDto sent = statusService.findByNameDto(FinancialStateStatusEnum.SENT.toString());
        financialState = financialStateService.addStatusDto(sent,financialState, null, null);
        financialState.setAccountValues(newValues);
        response.addAttribute("msg","financial State sended by " + Helpers.getLastFinancialStateStatusDto(financialState,false).getUsername());
        response.addAttribute("financialState",financialState);
        return new ResponseEntity<>(response,HttpStatus.CREATED);
    }

    @PostMapping("/approve/{id}")
    public ResponseEntity<?> approveFinancialState(@PathVariable Long id){
        Model response = new ExtendedModelMap();
        DcFinancialStateDto financialState = financialStateService.findOneDto(id);
        if (financialState == null){
            response.addAttribute("msg","This financial state doesn't exist");
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        DcFinancialStateStatusDto approved = statusService.findByNameDto(FinancialStateStatusEnum.APPROVED.toString());
        financialState = financialStateService.addStatusDto(approved,financialState, null, null);
        financialStateService.checkDoneFinancialStateDto(id);
        response.addAttribute("msg","financial State approved by " + Helpers.getLastFinancialStateStatusDto(financialState,false).getArea().getName());
        response.addAttribute("financialState",financialState);
        return new ResponseEntity<>(response,HttpStatus.CREATED);
    }

    @PostMapping("/reject/{id}")
    public ResponseEntity<?> rejectFinancialState(@PathVariable Long id, @RequestBody ObjectNode request) throws ParseException {
        Model response = new ExtendedModelMap();
        DcFinancialStateDto financialState = financialStateService.findOneDto(id);
        if (financialState == null){
            response.addAttribute("msg","This financial state doesn't exist");
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        DcFinancialStateStatusDto rejected = statusService.findByNameDto(FinancialStateStatusEnum.REJECTED.toString());
        List<DcAccountErrorDto> errors = request.get("errors") != null ? Arrays.asList(mapper.convertValue(request.get("errors"), DcAccountErrorDto[].class)) : new ArrayList<>();
        String comments = request.get("comments").toString().replaceAll("\"","");
        Date newLimiteDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.get("newLimitDate").toString().replaceAll("\"",""));

        financialState = financialStateService.addStatusDto(rejected,financialState, comments,newLimiteDate);
        DcFinancialStateXStatusDto lastStatus = Helpers.getLastFinancialStateStatusDto(financialState,false);
        List<DcAccountErrorDto> savedErrors = errorService.saveErrorsDto(errors,lastStatus);
        financialState.setStatuses(financialState.getStatuses().stream().map(status->{
            if(status.getId().equals(lastStatus.getId())){
                status.setErrors(savedErrors);
            }
            return status;
        }).collect(Collectors.toList()));
        financialStateService.checkDoneFinancialStateDto(id);
        response.addAttribute("msg","financial State approved by " + lastStatus.getArea().getName());
        response.addAttribute("financialState",financialState);
        return new ResponseEntity<>(response,HttpStatus.CREATED);
    }

    @PostMapping("/observations/{id}")
    public ResponseEntity<?> observationsFinancialState(@PathVariable Long id, @RequestBody ObjectNode request) throws ParseException {
        Model response = new ExtendedModelMap();
        DcFinancialStateDto financialState = financialStateService.findOneDto(id);
        if (financialState == null){
            response.addAttribute("msg","This financial state doesn't exist");
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        DcFinancialStateStatusDto commented = statusService.findByNameDto(FinancialStateStatusEnum.COMMENTED.toString());
        String comments = request.get("comments").toString().replaceAll("\"","");

        financialState = financialStateService.addStatusDto(commented,financialState, comments, null);
        DcFinancialStateXStatusDto lastStatus = Helpers.getLastFinancialStateStatusDto(financialState,false);
        response.addAttribute("msg","financial State approved by " + lastStatus.getArea().getName());
        response.addAttribute("financialState",financialState);
        return new ResponseEntity<>(response,HttpStatus.CREATED);
    }

    @PostMapping("/update-financial-states-limit-dates")
    public ResponseEntity<?> updateFinancialStatesLimitDate(@RequestBody ObjectNode request) throws ParseException {
        List<DcFinancialStateDto> financialStates = Arrays.asList(mapper.convertValue(request.get("financialStates"),DcFinancialStateDto[].class));
        Date newLimitDate = mapper.convertValue(request.get("newLimitDate"), Date.class);
        financialStates.forEach(financialState -> {
            financialState.setLimitDate(newLimitDate);
            financialStateService.updateDto(financialState, financialState.getId());
        });
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @Scheduled(cron = "${custom.financial-state.cron}")
    @PostMapping("/new-month")
    public ResponseEntity<?> scheduleTaskUsingCronExpression() {
        Model response = new ExtendedModelMap();
        List<DcDealer> dealers = dealerService.findAll();
        try {
            dealers.forEach(financialStateService::saveNewMonth);
        }catch (Exception e){
            response.addAttribute("msg",e.getMessage());
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        response.addAttribute("msg","Financial states created");
        return new ResponseEntity<>(HttpStatus.OK);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<?> restartProgressStatus(@PathVariable Long id) {
    	financialStateService.restartProgressStatus(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
    
    @PostMapping(value = "/upload/", consumes = {"multipart/form-data"})
	public ResponseEntity<?> modelImport(@RequestParam("file") MultipartFile file, 
			@RequestParam("id") String id) throws IOException, DataCollectBusinessLogicException {
    	financialStateService.processWorkbook(file.getBytes(), Long.valueOf(id));
		return new ResponseEntity<>(HttpStatus.OK);
			
	}    
}