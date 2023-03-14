/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcModel;
import com.honda.hdm.datacollect.model.entity.DcOperationCode;
import com.honda.hdm.datacollect.repository.base.IBaseStatusableRepository;
import java.math.BigDecimal;
import java.util.List;

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
public interface DcOperationCodeRepository extends IBaseStatusableRepository<DcOperationCode, BigDecimal>{
	
	@Query("SELECT DCM FROM DcOperationCode DCM ORDER BY DCM.id DESC")
	public Page<DcOperationCode> findAll(Pageable pageable);

    public DcOperationCode findOneByCodeIgnoreCase(String code);
    
    public List<DcOperationCode> findAll();
    
    @Query("select dc from DcOperationCode dc where UPPER(dc.code) like CONCAT('%', UPPER(:code), '%') or UPPER(dc.description) like CONCAT('%', UPPER(:code), '%')")
    public Page<DcOperationCode> findAllByTerm(@Param("code") String term, Pageable pageable);
    
    
}
