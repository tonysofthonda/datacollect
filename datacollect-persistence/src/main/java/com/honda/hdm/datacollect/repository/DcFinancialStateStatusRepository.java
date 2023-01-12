package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcFinancialStateStatus;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DcFinancialStateStatusRepository extends IBaseRepository<DcFinancialStateStatus, Long> {

    public DcFinancialStateStatus findByName(String name);
}
