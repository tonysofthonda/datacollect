package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcAccountError;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DcAccountErrorRepository extends IBaseRepository<DcAccountError, Long> {

 @Query("select error from DcAccountError error " +
         "join fetch error.accountValue " +
         "join error.status finstatus " +
         "join finstatus.status status " +
         "join finstatus.financialState finstate " +
         "where finstate.id = :financialStateId and " +
         "finstatus.dateAssignment = (select max(subfinstatus.dateAssignment) from DcFinancialStateXStatus subfinstatus " +
         "join subfinstatus.status substatus " +
         "join subfinstatus.financialState subfinstate " +
         "where subfinstate.id = :financialStateId and substatus.name like 'Rechazado')")
 public List<DcAccountError> findErrorsAfterLastSending(@Param("financialStateId") Long financialStateId);

}
