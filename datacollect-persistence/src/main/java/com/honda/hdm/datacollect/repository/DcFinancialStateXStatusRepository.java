package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcFinancialStateXStatus;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DcFinancialStateXStatusRepository  extends IBaseRepository<DcFinancialStateXStatus, Long> {

    @Query("select finstatus from DcFinancialStateXStatus finstatus " +
            "join finstatus.status status " +
            "join finstatus.financialState finstate " +
            "where finstate.id = :financialStateId and " +
            "finstatus.dateAssignment > (select max(subfinstatus.dateAssignment) from DcFinancialStateXStatus subfinstatus " +
            "join subfinstatus.status substatus " +
            "join subfinstatus.financialState subfinstate " +
            "where subfinstate.id = :financialStateId and substatus.name like 'Enviado')")
    public List<DcFinancialStateXStatus> findStatusAfterSending(@Param("financialStateId") Long financialStateId);
}
