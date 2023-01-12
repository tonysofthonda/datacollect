package com.honda.hdm.datacollect.service.util;

import com.honda.hdm.datacollect.model.entity.DcFinancialState;
import com.honda.hdm.datacollect.model.entity.DcFinancialStateXStatus;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateDto;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateXStatusDto;
import com.honda.hdm.datacollect.model.enums.FinancialStateStatusEnum;
import org.springframework.validation.BindingResult;

import java.util.HashMap;
import java.util.Map;

public class Helpers {
    public static Map<String, ?> getAllErrorsOfRequest(BindingResult result) {
        Map<String, String> errors = new HashMap<>();
        errors.put("msg", "Fields with errors");
        result.getFieldErrors().stream().forEach(error -> {
            errors.put(error.getField(), error.getDefaultMessage());
        });
        if (result.getFieldErrors().isEmpty()) {
            result.getAllErrors().stream().forEach(error -> {
                errors.put(error.getObjectName(), error.getDefaultMessage());
            });
        }
        return errors;
    }

    public static DcFinancialStateXStatus getLastFinancialStateStatus(DcFinancialState financialState, FinancialStateStatusEnum lastStatus){
        return financialState.getStatuses().stream().filter(status -> status.getStatus().getName().equals(lastStatus.toString())).reduce((status1,status2)->status1.getDateAssignment().after(status2.getDateAssignment()) ? status1 : status2).orElse(null);
    }

    public static DcFinancialStateXStatus getLastFinancialStateStatus(DcFinancialState financialState){
        return financialState.getStatuses().stream().reduce((status1,status2)->status1.getDateAssignment().after(status2.getDateAssignment()) ? status1 : status2).orElse(null);
    }

    public static DcFinancialStateXStatus getLastFinancialStateStatus(DcFinancialState financialState, Boolean considerCommented){
        return financialState.getStatuses().stream().filter(status -> !considerCommented && !status.getStatus().getName().equals(FinancialStateStatusEnum.COMMENTED.toString())).reduce((status1, status2)->status1.getDateAssignment().after(status2.getDateAssignment()) ? status1 : status2).orElse(null);
    }

    public static DcFinancialStateXStatusDto getLastFinancialStateStatusDto(DcFinancialStateDto financialState){
        return financialState.getStatuses().stream().reduce((status1,status2)->status1.getDateAssignment().after(status2.getDateAssignment()) ? status1 : status2).orElse(null);
    }

    public static DcFinancialStateXStatusDto getLastFinancialStateStatusDto(DcFinancialStateDto financialState, Boolean considerCommented){
        return financialState.getStatuses().stream().filter(status -> !considerCommented && !status.getStatus().getName().equals(FinancialStateStatusEnum.COMMENTED.toString())).reduce((status1, status2)->status1.getDateAssignment().after(status2.getDateAssignment()) ? status1 : status2).orElse(null);
    }

    public static String padLeftZeros(String input,Integer length){
        return String.format("%1$" + length + "s", input).replace(' ', '0');
    }
}
