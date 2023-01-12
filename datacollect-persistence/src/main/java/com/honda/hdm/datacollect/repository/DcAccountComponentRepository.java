package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcAccountComponent;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DcAccountComponentRepository extends IBaseRepository<DcAccountComponent, Long> {

    public List<DcAccountComponent> findByName(String name);
}
