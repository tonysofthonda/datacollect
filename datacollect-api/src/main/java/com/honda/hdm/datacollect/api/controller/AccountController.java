package com.honda.hdm.datacollect.api.controller;

import com.honda.hdm.datacollect.model.entity.dto.DcFormulaDto;
import com.honda.hdm.datacollect.service.domain.IDcAccountService;
import com.honda.hdm.datacollect.service.domain.impl.DcAccountValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/account")
public class AccountController {

    @Autowired
    IDcAccountService accountService;

    @Autowired
    DcAccountValueService valueService;

    @GetMapping("/main/{page}")
    public ResponseEntity<?> listMainAccounts(@PathVariable String page){
        return new ResponseEntity<>(accountService.findMainAccountsDto(page), HttpStatus.OK);
    }

    @GetMapping("/children/{id}")
    public ResponseEntity<?> listChildrenAccounts(@PathVariable Long id){
        return new ResponseEntity<>(accountService.findChildrenDto(id), HttpStatus.OK);
    }

    @GetMapping("/parent/{id}")
    public ResponseEntity<?> getParentAccount(@PathVariable Long id){
        return new ResponseEntity<>(accountService.findParentDto(id), HttpStatus.OK);
    }

    @GetMapping("/pages")
    public ResponseEntity<?> listAllPages(){
        return new ResponseEntity<>(accountService.findAllPages(), HttpStatus.OK);
    }

    @GetMapping("/formula/{id}")
    public ResponseEntity<?> listAllPages(@PathVariable Long id){
        DcFormulaDto formula = accountService.findFormulaDto(id);
        if(formula == null){
            Model response = new ExtendedModelMap();
            response.addAttribute("msg","Account without a formula or not exists");
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(formula, HttpStatus.OK);
    }

    @GetMapping("/values/size")
    public ResponseEntity<?> getAllAccountValueSize(){
        return new ResponseEntity<>(valueService.countEditableAccountValues(), HttpStatus.OK);
    }
}
