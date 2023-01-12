package com.honda.hdm.datacollect.service.domain;

import com.honda.hdm.datacollect.model.entity.DcFinancialStateStatus;
import com.honda.hdm.datacollect.model.entity.dto.DcFinancialStateStatusDto;

import java.util.List;

public interface IDcFinancialStateStatusService extends IDtoService<DcFinancialStateStatusDto, Long>{

    public List<DcFinancialStateStatusDto> findAllDto();

    public DcFinancialStateStatus findByName(String name);

    public DcFinancialStateStatusDto findByNameDto(String name);
}
