package com.honda.hdm.datacollect.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcOtherIncome;

@Repository
public interface DcOtherIncomeRepository extends JpaRepository<DcOtherIncome, Long> {

	List<DcOtherIncome> findByFinancialStateId(final Long financialStateId);

	List<DcOtherIncome> findByFinancialStateIdOrderByIdDesc(Long financialId);
}
