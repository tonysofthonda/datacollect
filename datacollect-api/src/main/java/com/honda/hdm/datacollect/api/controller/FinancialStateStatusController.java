package com.honda.hdm.datacollect.api.controller;

import com.honda.hdm.datacollect.service.domain.IDcFinancialStateStatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/financial-state-status")
public class FinancialStateStatusController {

    @Autowired
    IDcFinancialStateStatusService financialStateStatusService;

    @GetMapping("/list")
    public ResponseEntity<?> listFinancialStatesStatuses(){
        return new ResponseEntity<>(financialStateStatusService.findAllDto(), HttpStatus.OK);
    }
}
