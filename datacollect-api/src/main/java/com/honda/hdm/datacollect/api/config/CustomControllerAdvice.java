package com.honda.hdm.datacollect.api.config;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.honda.hdm.datacollect.model.exception.DataCollectBusinessLogicException;

@ControllerAdvice
class CustomControllerAdvice {
	
    @ExceptionHandler(DataCollectBusinessLogicException.class) // exception handled
    public ResponseEntity<?> handleNullPointerExceptions(
        Exception e
    ) {
        // ... potential custom logic

        HttpStatus status = HttpStatus.NOT_FOUND; // 404

        return new ResponseEntity<>(e.getMessage(),
            status
        );
    }
}