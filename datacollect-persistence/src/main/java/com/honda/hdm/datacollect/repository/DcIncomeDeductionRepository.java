package com.honda.hdm.datacollect.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcIncomeDeduction;

@Repository
public interface DcIncomeDeductionRepository extends JpaRepository<DcIncomeDeduction, Long> {

    List<DcIncomeDeduction>	findByFinancialStateId(final Long financialStateId);

	List<DcIncomeDeduction> findByFinancialStateIdOrderByIdDesc(Long financialId);
}
