package com.honda.hdm.datacollect.api.controller;

import com.honda.hdm.datacollect.security.AuthService;
import com.honda.hdm.datacollect.service.domain.IDcMenuCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    AuthService authService;

    @Autowired
    IDcMenuCategoryService menuCategoryService;

    @Value("${config.security.oauth.jwt.enabled}")
    Boolean security;

    @GetMapping("/list")
    public ResponseEntity<?> listMenu() {
        if(security){
            return new ResponseEntity<>(authService.getMenusOfSessionDto(), HttpStatus.OK);
        }else{
            return new ResponseEntity<>(menuCategoryService.findAllDto(), HttpStatus.OK);
        }

    }
}
