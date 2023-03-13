package com.honda.hdm.datacollect.repository.comm;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.NameAccountFinancial;

@Repository
public interface DcNameAccountFinancialRepository extends JpaRepository<NameAccountFinancial, Long> {

	List<NameAccountFinancial> findByFinancialStateId(final Long financialStateId);

	List<NameAccountFinancial> findByFinancialStateIdOrderByNoLineAsc(Long financialId);
}
