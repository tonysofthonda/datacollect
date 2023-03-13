package com.honda.hdm.datacollect.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcPageTwoFinancial;

@Repository
public interface DcPageTwoFinancialRepository extends JpaRepository<DcPageTwoFinancial, Long> {

	List<DcPageTwoFinancial> findByFinancialStateId(final Long financialStateId);

	List<DcPageTwoFinancial> findByFinancialStateIdOrderByNoLineAsc(Long financialId);
}
