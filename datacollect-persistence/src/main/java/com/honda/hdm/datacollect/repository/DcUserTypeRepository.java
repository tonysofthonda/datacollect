package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcUserType;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DcUserTypeRepository extends IBaseRepository<DcUserType, Long> {

    public DcUserType findByName(String name);
}
