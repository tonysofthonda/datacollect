package com.honda.hdm.datacollect.service.domain.impl;

import com.honda.hdm.datacollect.model.entity.DcAccountComponent;
import com.honda.hdm.datacollect.model.entity.dto.DcAccountComponentDto;
import com.honda.hdm.datacollect.repository.DcAccountComponentRepository;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.domain.BaseDomainService;
import com.honda.hdm.datacollect.service.domain.IDcAccountComponentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DcAccountComponentService extends BaseDomainService<DcAccountComponent, Long>  implements IDcAccountComponentService {

    @Autowired
    DcAccountComponentRepository repository;

    @Autowired
    DtoConverter dtoConverter;

    @Override
    public List<DcAccountComponent> findAccountComponentByName(String name) {
        return repository.findByName(name);
    }

    @Override
    public List<DcAccountComponentDto> findAccountComponentByNameDto(String name) {
        return findAccountComponentByName(name).stream().map(dtoConverter::convertAccountComponent).collect(Collectors.toList());
    }
}
