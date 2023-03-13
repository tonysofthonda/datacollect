package com.honda.hdm.datacollect.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcPositionPage2Financial;

@Repository
public interface DcPositionPage2FinancialRepository extends JpaRepository<DcPositionPage2Financial, Long> {

	List<DcPositionPage2Financial> findByFinancialStateId(final Long financialStateId);

	List<DcPositionPage2Financial> findByFinancialStateIdOrderByIdDesc(Long financialId);
}
