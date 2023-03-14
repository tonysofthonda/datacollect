/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcDealer;
import com.honda.hdm.datacollect.model.entity.DcDealerGroup;
import com.honda.hdm.datacollect.model.entity.DcOrderType;
import com.honda.hdm.datacollect.repository.base.IBaseStatusableRepository;

import java.math.BigDecimal;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * @author VJC80439
 */
@Repository
public interface DcDealerRepository extends IBaseStatusableRepository<DcDealer, Long> {
	
	@Query("SELECT DCM FROM DcDealer DCM ORDER BY DCM.id DESC")
	public Page<DcDealer> findAll(Pageable pageable);

    public DcDealer findOneByDealerNumberIgnoreCase(String dealerNumber);

    public DcDealer findOneByNameIgnoreCase(String name);

    public Long countByDcDealerGroup(DcDealerGroup dealerGroup);

    @Query("FROM DcDealer dealer " +
            "WHERE UPPER(dealer.dealerNumber) LIKE CONCAT('%', UPPER(:term), '%') OR " +
            "UPPER(dealer.dcDealerGroup.name) LIKE CONCAT('%', UPPER(:term), '%') OR " +
            "UPPER(dealer.dcTerchief.firstName) LIKE CONCAT('%', UPPER(:term), '%') OR UPPER(dealer.dcTerchief.lastName) LIKE CONCAT('%', UPPER(:term), '%') OR UPPER(dealer.dcTerchief.motherLast) LIKE CONCAT('%', UPPER(:term), '%')")
    public Page<DcDealer> findAllByTerm(@Param("term") String term, Pageable pageable);
}
