/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcTerchief;
import com.honda.hdm.datacollect.repository.base.IBaseStatusableRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DcTerchiefRepository extends IBaseStatusableRepository<DcTerchief, Long> {

	public DcTerchief findOne(@Param("id") Long id);

    @Query("select dc from DcTerchief dc where UPPER(dc.firstName) like CONCAT('%', UPPER(:term), '%') or UPPER(dc.lastName) like CONCAT('%', UPPER(:term), '%') or UPPER(dc.motherLast) like CONCAT('%', UPPER(:term), '%') and dc.dcRecordStatusId = 1 order by (dc.firstName)DESC")
    public Page<DcTerchief> findAllByTerm(@Param("term") String term, Pageable pageable);
}
