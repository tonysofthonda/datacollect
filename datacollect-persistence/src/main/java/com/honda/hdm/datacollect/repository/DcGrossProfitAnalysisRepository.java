package com.honda.hdm.datacollect.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcGrossProfitAnalysis;

@Repository
public interface DcGrossProfitAnalysisRepository extends JpaRepository<DcGrossProfitAnalysis, Long> {
	
	List<DcGrossProfitAnalysis> findByFinancialStateId(final Long financialStateId);
	
	List<DcGrossProfitAnalysis> findByFinancialStateIdOrderByNoLineAsc(Long financialId);

}
