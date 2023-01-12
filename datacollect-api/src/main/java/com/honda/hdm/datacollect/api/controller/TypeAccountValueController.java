package com.honda.hdm.datacollect.api.controller;

import com.honda.hdm.datacollect.service.domain.IDcTypeAccountValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/type-account-value")
public class TypeAccountValueController {

    @Autowired
    IDcTypeAccountValueService typeAccountValueService;

    @GetMapping("/main")
    public ResponseEntity<?> listMainTypesAccountsValues(){
        return new ResponseEntity<>(typeAccountValueService.findAllDto(), HttpStatus.OK);
    }

    @GetMapping("/children/{id}")
    public ResponseEntity<?> getTypeAccountChildren(@PathVariable Long id){
        return new ResponseEntity<>(typeAccountValueService.findChildrenDto(id), HttpStatus.OK);
    }
}
