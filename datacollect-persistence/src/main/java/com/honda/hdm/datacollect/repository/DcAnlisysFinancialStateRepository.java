package com.honda.hdm.datacollect.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcAnlisysFinancialState;

@Repository
public interface DcAnlisysFinancialStateRepository extends JpaRepository<DcAnlisysFinancialState, Long> {

	List<DcAnlisysFinancialState> findByFinancialStateId(final Long financialStateId);

	List<DcAnlisysFinancialState> findByFinancialStateIdOrderByNoLineAsc(Long financialId);
}
