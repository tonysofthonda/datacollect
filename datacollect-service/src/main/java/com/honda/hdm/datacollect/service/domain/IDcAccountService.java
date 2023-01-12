package com.honda.hdm.datacollect.service.domain;

import com.honda.hdm.datacollect.model.entity.DcAccount;
import com.honda.hdm.datacollect.model.entity.DcAccountRelationship;
import com.honda.hdm.datacollect.model.entity.DcFormula;
import com.honda.hdm.datacollect.model.entity.DcFormulaTerm;
import com.honda.hdm.datacollect.model.entity.dto.DcAccountDto;
import com.honda.hdm.datacollect.model.entity.dto.DcAccountRelationshipDto;
import com.honda.hdm.datacollect.model.entity.dto.DcFormulaDto;
import com.honda.hdm.datacollect.model.entity.dto.DcFormulaTermDto;

import java.util.List;

public interface IDcAccountService extends IBaseDomainService<DcAccount, Long>, IDtoService<DcAccountDto, Long>{

    public void deleteCascade(DcAccount account);

    public List<DcAccount> findModelAccounts();

    public List<DcAccount> findByName(String name);

    public List<DcAccountDto> findByNameDto(String name);

    public List<DcAccount> findMainAccounts(String page);

    public List<DcAccountDto> findMainAccountsDto(String page);

    public List<DcAccountRelationship> findChildren(Long id);

    public List<DcAccountRelationshipDto> findChildrenDto(Long id);

    public DcAccountRelationship findParent(Long id);

    public DcAccountRelationshipDto findParentDto(Long id);

    public List<String> findAllPages();

    public DcFormula findFormula(Long id);

    public DcFormulaDto findFormulaDto(Long id);

    public List<DcFormulaTerm> findFormulaTerms(Long id);

    public List<DcFormulaTermDto> findFormulaTermsDto(Long id);
}
