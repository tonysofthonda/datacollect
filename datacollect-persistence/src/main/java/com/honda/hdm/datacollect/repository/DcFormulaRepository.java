package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcFormula;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DcFormulaRepository extends IBaseRepository<DcFormula, Long> {

    @Query("select formula from DcFormula formula join formula.terms term where term.accountValueTerm.id = :accountValueTermId")
    public List<DcFormula> findFormulaByTerm(@Param("accountValueTermId") Long accountValueTermId);
}
