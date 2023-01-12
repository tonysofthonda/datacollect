package com.honda.hdm.datacollect.validation.impl;

import com.honda.hdm.datacollect.model.entity.DcDealerGroup;
import com.honda.hdm.datacollect.model.entity.dto.DcDealerGroupDto;
import com.honda.hdm.datacollect.service.domain.IDcDealerGroupService;
import com.honda.hdm.datacollect.validation.DealerGroupValid;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class DealerGroupValidator implements ConstraintValidator<DealerGroupValid, DcDealerGroupDto> {

    @Autowired
    IDcDealerGroupService dealerGroupService;

    @Override
    public void initialize(DealerGroupValid dealerGroupValid) {
    }

    @Override
    public boolean isValid(DcDealerGroupDto dcDealerGroupDto, ConstraintValidatorContext constraintValidatorContext) {
        Boolean isUpdating = dcDealerGroupDto.getId() != null;
        DcDealerGroup dealerGroup = dealerGroupService.findByName(dcDealerGroupDto.getName());
        return dealerGroup == null || (isUpdating && dealerGroup.getName().equals(dcDealerGroupDto.getName()));
    }
}
