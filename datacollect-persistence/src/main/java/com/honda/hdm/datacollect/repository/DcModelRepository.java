/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.honda.hdm.datacollect.model.entity.DcModel;
import com.honda.hdm.datacollect.repository.base.IBaseStatusableRepository;

/**
 *
 * @author VJC80439
 */
@Repository
public interface DcModelRepository extends IBaseStatusableRepository<DcModel, Long>{

	@Query("SELECT DCM FROM DcModel DCM ORDER BY DCM.id DESC")
	public Page<DcModel> findAll(Pageable pageable);

    public DcModel findOneByCodeIgnoreCase(String dcModelCode);
   
    public DcModel findFirstByCodeAndYear(String code, String year);

    @Query("select dc from DcModel dc where UPPER(dc.code) like CONCAT('%', UPPER(:term), '%') or UPPER(dc.year) like CONCAT('%', UPPER(:term), '%') or UPPER(dc.name) like CONCAT('%', UPPER(:term), '%') or UPPER(dc.description) like CONCAT('%', UPPER(:term), '%')")
    public Page<DcModel> findAllByTerm(@Param("term") String term, Pageable pageable);
    
}
