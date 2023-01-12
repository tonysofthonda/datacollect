package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcAccount;
import com.honda.hdm.datacollect.model.entity.DcAccountRelationship;
import com.honda.hdm.datacollect.model.entity.DcFormula;
import com.honda.hdm.datacollect.model.entity.DcFormulaTerm;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DcAccountRepository extends IBaseRepository<DcAccount, Long> {

    public List<DcAccount> findByName(String name);

    @Query("select account from DcAccount account join account.model")
    public List<DcAccount> findModelAccounts();

    @Query("select account from DcAccount account\n" +
            "left join account.accountParent parent\n" +
            "where account.page = :page and parent.accountChild is null order by account.id asc")
    public List<DcAccount> findMainAccounts(@Param("page") String page);

    @Query("select rel from DcAccountRelationship rel\n" +
            "where rel.accountParent.id = :id order by rel.order asc")
    public List<DcAccountRelationship> findChildren(@Param("id") Long id);

    @Query("select rel from DcAccountRelationship rel\n" +
            "where rel.accountChild.id = :id")
    public DcAccountRelationship findParent(@Param("id") Long id);

    @Query("select account.page from DcAccount account group by account.page order by account.page asc")
    public List<String> findAllPages();

    @Query("select formula from DcAccount account\n" +
            "join account.accountValues values\n" +
            "join values.formula formula\n" +
            "where account.id = :id")
    public DcFormula findFormula(@Param("id") Long id);

    @Query("select terms from DcAccount account\n" +
            "join account.accountValues values\n" +
            "join values.formula formula\n" +
            "join formula.terms terms\n" +
            "where account.id = :id")
    public List<DcFormulaTerm> findFormulaTerms(@Param("id") Long id);
}
