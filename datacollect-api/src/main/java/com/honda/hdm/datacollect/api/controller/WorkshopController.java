package com.honda.hdm.datacollect.api.controller;

import com.honda.hdm.datacollect.service.domain.IDcWorkshopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/workshop")
public class WorkshopController {

    @Autowired
    IDcWorkshopService workshopService;

    @GetMapping("/list")
    public ResponseEntity<?> listWorkshops(){
        return new ResponseEntity<>(workshopService.findAllDto(), HttpStatus.OK);
    }
}
