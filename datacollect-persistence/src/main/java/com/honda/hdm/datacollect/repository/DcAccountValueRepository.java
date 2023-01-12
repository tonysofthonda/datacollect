package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcAccount;
import com.honda.hdm.datacollect.model.entity.DcAccountValue;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DcAccountValueRepository extends IBaseRepository<DcAccountValue, Long> {

    @Query(value = "SELECT (SELECT COUNT(*) FROM dcollectdb.dc_account_value) - (SELECT COUNT(*) FROM dcollectdb.dc_account_value WHERE read_only = 1 AND default_value is not null) FROM dual", nativeQuery = true)
    public Integer countEditableAccountValues();

    @Query("select acvalue from DcAccountValue acvalue " +
            "join acvalue.account account " +
            "join acvalue.typeAccountValue typeval " +
            "join typeval.typeAccountParent rel " +
            "join rel.typeAccountParent typevalparent " +
            "where typevalparent.name like 'Del año a la fecha' and account.page like '4'")
    public List<DcAccountValue> findHistoricalPage4AccountValues();

    @Query("select acvalue from DcAccountValue acvalue " +
            "join acvalue.account account " +
            "join acvalue.typeAccountValue typeval " +
            "join typeval.typeAccountParent rel " +
            "join rel.typeAccountParent typevalparent " +
            "where typevalparent.name != 'Total de ingresos y egresos de la concesionaria' and typeval.name like 'Del año a la fecha' and account.page like '2 y 3' and  account.name != 'Ventas' and account.name != 'Utilidad Bruta'")
    public List<DcAccountValue> findHistoricalPage2and3AccountValues();
    
    DcAccountValue findByAccountNameAndTypeAccountValueNameAndAccountPageAndAccountAccountNumber(final String subtitle, final String header, final String page, final String accountNumber);
    
    DcAccountValue findByAccountNameAndTypeAccountValueNameAndAccountPageAndAccountAccountNumberIsNull(final String subtitle, final String header, final String page);
    
    DcAccountValue findByAccountNameAndTypeAccountValueNameAndAccountPageAndAccountAccountNumberAndTypeAccountValueTypeAccountParentTypeAccountParentName(final String subtitle, final String header, final String page, final String accountNumber, final String parent);
}
