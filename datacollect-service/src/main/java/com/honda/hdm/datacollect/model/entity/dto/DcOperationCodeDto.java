package com.honda.hdm.datacollect.model.entity.dto;

import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.List;

public class DcOperationCodeDto {

    private BigDecimal id;
    private String code;
    private String description;
    @Size(min = 1)
    List<DcServiceTypeDto> serviceTypes;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }


    public List<DcServiceTypeDto> getServiceTypes() {
        return serviceTypes;
    }

    public void setServiceTypes(List<DcServiceTypeDto> serviceTypes) {
        this.serviceTypes = serviceTypes;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
