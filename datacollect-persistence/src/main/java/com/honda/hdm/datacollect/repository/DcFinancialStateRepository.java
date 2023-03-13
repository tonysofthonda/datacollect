package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcFinancialState;
import com.honda.hdm.datacollect.repository.base.IBaseStatusableRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface DcFinancialStateRepository extends IBaseStatusableRepository<DcFinancialState, Long> {

    @Query("select finState from DcFinancialState finState " +
            "left join finState.dealer dealer " +
            "left join dealer.dcDealerGroup dealerGroup " +
            "left join finState.statuses statuses " +
            "left join statuses.status status " +
            "where " +
            "statuses.dateAssignment = (select max(dateAssignment) from DcFinancialStateXStatus where financialState.id = finState.id) and " +
            "(:dealerGroupId is null or dealerGroup.id = :dealerGroupId) and " +
            "(:dealerId is null or dealer.id = :dealerId) and " +
            "(:year is null or finState.year = :year) and " +
            "(:month is null or finState.month = :month) and " +
            "(:statusId is null or status.id = :statusId) group by finState.id, finState.month, finState.year, finState.limitDate, finState.dealer, finState.bstate, finState.dcRecordStatusId, finState.createTimestamp, finState.updateTimestamp")
    public Page<DcFinancialState> filterFinancialState(@Param("dealerGroupId") BigDecimal dealerGroupId,
                                                       @Param("dealerId") Long dealerId,
                                                       @Param("year") Integer year,
                                                       @Param("month") Integer month,
                                                       @Param("statusId") Long statusId, Pageable pageable);
    
    @Query("select finState from DcFinancialState finState " +
            "left join finState.dealer dealer " +
            "where " +
            "finState.year = :year and " +
            "finState.month = :month and " +
            "dealer.id = :dealerId")
    public DcFinancialState findFinancialStateByYearAndMonthAndDealerId(@Param("year") Integer year,@Param("month") Integer month,@Param("dealerId") Long dealerId);
}
