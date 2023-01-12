package com.honda.hdm.datacollect.service.domain;

import com.honda.hdm.datacollect.model.entity.DcUserType;
import com.honda.hdm.datacollect.model.entity.dto.DcUserTypeDto;

public interface IDcUserTypeService extends IBaseDomainService<DcUserType, Long>,IDtoService<DcUserTypeDto, Long>{

    public DcUserType findByName(String name);

    public DcUserTypeDto findByNameDto(String name);
}
