package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcFinancialStateXAccountValue;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DcFinancialStateXAccountValueRepository extends IBaseRepository<DcFinancialStateXAccountValue, Long> {

    @Query("select value from DcFinancialStateXAccountValue value\n" +
            "where value.accountValue.id = :accountValueId and value.financialState.id = :financialStateId")
    public DcFinancialStateXAccountValue findByAccountValueAndFinancialState(@Param("accountValueId") Long accountValueId,@Param("financialStateId") Long financialStateId);

    @Query("select finvalue from DcFinancialStateXAccountValue finvalue " +
            "join finvalue.financialState finstate " +
            "join finstate.dealer dealer " +
            "join finvalue.accountValue acvalue " +
            "join acvalue.account account " +
            "join acvalue.typeAccountValue typeval " +
            "join typeval.typeAccountParent rel " +
            "join rel.typeAccountParent typevalparent " +
            "where typevalparent.name != 'Total de ingresos y egresos de la concesionaria' and typeval.name like 'Del año a la fecha' and account.page like '2 y 3' and  account.name != 'Ventas' and account.name != 'Utilidad Bruta' and finstate.year = :year and finstate.month = :month and dealer.id = :dealerId")
    public List<DcFinancialStateXAccountValue> findHistoricalPage2and3AccountValues(@Param("year") Integer year, @Param("month") Integer month, @Param("dealerId") Long dealerId);

    @Query("select finvalue from DcFinancialStateXAccountValue finvalue " +
            "join finvalue.financialState finstate " +
            "join finstate.dealer dealer " +
            "join finvalue.accountValue acvalue " +
            "join acvalue.account account " +
            "join acvalue.typeAccountValue typeval " +
            "join typeval.typeAccountParent rel " +
            "join rel.typeAccountParent typevalparent " +
            "where typevalparent.name like 'Del año a la fecha' and account.page like '4' and finstate.year = :year and finstate.month = :month and dealer.id = :dealerId")
    public List<DcFinancialStateXAccountValue> findHistoricalPage4AccountValues(@Param("year") Integer year, @Param("month") Integer month, @Param("dealerId") Long dealerId);

    @Query("select finvalue from DcFinancialStateXAccountValue finvalue " +
            "join finvalue.financialState finstate " +
            "join finstate.dealer dealer " +
            "join finvalue.accountValue acvalue " +
            "join acvalue.account account " +
            "where account.accountNumber is not null and (account.accountNumber like 'M%' or account.accountNumber like '399') and finstate.year = :year and finstate.month = :month and dealer.id = :dealerId")
    public List<DcFinancialStateXAccountValue> findTotalUnitsPasives(@Param("year") Integer year, @Param("month") Integer month, @Param("dealerId") Long dealerId);

    @Modifying
    @Query("delete from DcFinancialStateXAccountValue value where value.accountValue.id = :accountValueId")
    public void deleteByAccountValue(@Param("accountValueId") Long accountValueId);
}
