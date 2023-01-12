package com.honda.hdm.datacollect.service.domain;

import com.honda.hdm.datacollect.model.entity.DcTypeAccountValue;
import com.honda.hdm.datacollect.model.entity.DcTypeAccountValueRelationship;
import com.honda.hdm.datacollect.model.entity.dto.DcTypeAccountValueDto;
import com.honda.hdm.datacollect.model.entity.dto.DcTypeAccountValueRelationshipDto;

import java.util.List;

public interface IDcTypeAccountValueService extends IDtoService<DcTypeAccountValueDto, Long>{

    public List<DcTypeAccountValue> findAll();

    public List<DcTypeAccountValueDto> findAllDto();

    public List<DcTypeAccountValue> findTypeAccountByName(String name);

    public List<DcTypeAccountValueDto> findTypeAccountByNameDto(String name);

    public List<DcTypeAccountValueRelationship> findChildren(Long id);

    public List<DcTypeAccountValueRelationshipDto> findChildrenDto(Long id);

    public DcTypeAccountValueRelationship findParent(Long id);

    public DcTypeAccountValueRelationshipDto findParentDto(Long id);
}
