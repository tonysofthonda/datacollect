package com.honda.hdm.datacollect.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcPassiveFinancial;

@Repository
public interface DcPassiveRepository extends JpaRepository<DcPassiveFinancial, Long> {

	List<DcPassiveFinancial> findByFinancialStateId(final Long financialStateId);

	List<DcPassiveFinancial> findByFinancialStateIdOrderByNoLineAsc(Long financialId);
}
