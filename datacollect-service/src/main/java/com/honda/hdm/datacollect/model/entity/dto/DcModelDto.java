/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.honda.hdm.datacollect.model.entity.dto;

import com.honda.hdm.datacollect.model.dto.dbconst.DcRecordStatusEnum;
import com.honda.hdm.datacollect.validation.Alphanumeric;
import com.honda.hdm.datacollect.validation.ModelValid;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;

/**
 * @author VJC80587
 */
@ModelValid
public class DcModelDto {
    private Long id;
    @NotEmpty
    @Alphanumeric
    private String code;
    private String brand;
    private String name;
    @NotNull
    @Max(value = 9999)
    @Min(value = 1000)
    private Integer year;
    private String assemblyLocation;
    private String extColorCode;
    private String extColorName;
    private String intColorCode;
    private String description;
    private DcRecordStatusEnum status;
    @Size(min = 1)
    private List<DcSystemServiceDto> systemServices;

    private DcAccountDto account;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getAssemblyLocation() {
        return assemblyLocation;
    }

    public void setAssemblyLocation(String assemblyLocation) {
        this.assemblyLocation = assemblyLocation;
    }

    public String getExtColorCode() {
        return extColorCode;
    }

    public void setExtColorCode(String extColorCode) {
        this.extColorCode = extColorCode;
    }

    public String getExtColorName() {
        return extColorName;
    }

    public void setExtColorName(String extColorName) {
        this.extColorName = extColorName;
    }

    public String getIntColorCode() {
        return intColorCode;
    }

    public void setIntColorCode(String intColorCode) {
        this.intColorCode = intColorCode;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public DcRecordStatusEnum getStatus() {
        return status;
    }

    public void setStatus(DcRecordStatusEnum status) {
        this.status = status;
    }

    public List<DcSystemServiceDto> getSystemServices() {
        return systemServices;
    }

    public void setSystemServices(List<DcSystemServiceDto> systemServices) {
        this.systemServices = systemServices;
    }

    public DcAccountDto getAccount() {
        return account;
    }

    public void setAccount(DcAccountDto account) {
        this.account = account;
    }
}
