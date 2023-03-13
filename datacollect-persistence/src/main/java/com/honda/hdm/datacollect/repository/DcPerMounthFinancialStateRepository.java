package com.honda.hdm.datacollect.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcPerMounthFinancialState;

@Repository
public interface DcPerMounthFinancialStateRepository extends JpaRepository<DcPerMounthFinancialState, Long> {

	List<DcPerMounthFinancialState> findByFinancialStateId(final Long financialStateId);

	List<DcPerMounthFinancialState> findByFinancialStateIdOrderByNoLineAsc(Long financialId);
}
