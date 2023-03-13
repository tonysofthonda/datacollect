package com.honda.hdm.datacollect.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcActiveFinancial;

@Repository
public interface DcActiveRepository extends JpaRepository<DcActiveFinancial, Long> {

	List<DcActiveFinancial> findByFinancialStateIdOrderByNoLineAsc(Long financialId);
}
