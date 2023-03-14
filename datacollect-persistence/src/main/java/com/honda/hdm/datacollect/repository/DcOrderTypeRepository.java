/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcModel;
import com.honda.hdm.datacollect.model.entity.DcOrderType;
import com.honda.hdm.datacollect.repository.base.IBaseStatusableRepository;
import java.math.BigDecimal;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author VJC80439
 */
@Repository
public interface DcOrderTypeRepository extends IBaseStatusableRepository<DcOrderType, BigDecimal>{
	
	@Query("SELECT DCM FROM DcOrderType DCM ORDER BY DCM.id DESC")
	public Page<DcOrderType> findAll(Pageable pageable);

	public DcOrderType findOneByCodeIgnoreCase(@Param("code") String code);
    
    @Query("select dc from DcOrderType dc where UPPER(dc.code) like CONCAT('%', UPPER(:code), '%') or UPPER(dc.description) like CONCAT('%', UPPER(:code), '%') order by dc.id desc")
    public Page<DcOrderType> findAllByTerm(@Param("code") String term, Pageable pageable);
    
}
