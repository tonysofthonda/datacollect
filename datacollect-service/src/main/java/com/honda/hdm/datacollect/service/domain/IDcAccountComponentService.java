package com.honda.hdm.datacollect.service.domain;

import com.honda.hdm.datacollect.model.entity.DcAccountComponent;
import com.honda.hdm.datacollect.model.entity.dto.DcAccountComponentDto;

import java.util.List;

public interface IDcAccountComponentService extends IBaseDomainService<DcAccountComponent,Long> {

    public List<DcAccountComponent> findAccountComponentByName(String name);

    public List<DcAccountComponentDto> findAccountComponentByNameDto(String name);
}
