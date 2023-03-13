package com.honda.hdm.datacollect.service.converter;

import com.honda.hdm.datacollect.model.entity.*;
import com.honda.hdm.datacollect.model.entity.auth.DcLdapGroup;
import com.honda.hdm.datacollect.model.entity.auth.DcRole;
import com.honda.hdm.datacollect.model.entity.dto.*;
import com.honda.hdm.datacollect.model.entity.dto.auth.*;
import com.honda.hdm.datacollect.service.domain.IDcDealerService;
import com.honda.hdm.datacollect.service.domain.IDcFacilityService;
import com.honda.hdm.datacollect.service.wrapper.RelationshipCheck;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Calendar;
import java.util.stream.Collectors;

@Component
public class DtoConverter {

    @Autowired
    IDcFacilityService facilityService;

    @Autowired
    IDcDealerService dealerService;

    public DcContactDto convertContact(DcContact contact) {
        DcContactDto dto = new DcContactDto();
        dto.setId(contact.getId());
        dto.setPhoneNumber(contact.getPhoneNumber());
        dto.setFirstName(contact.getFirstName());
        dto.setLastName(contact.getLastName());
        dto.setMotherLastName(contact.getMotherLastName());
        dto.setEmail(contact.getEmail());
        dto.setNotes(contact.getNotes());
        return dto;
    }

    public DcTerchiefDto convertTerchief(DcTerchief terchief){
        DcTerchiefDto dto = new DcTerchiefDto();
        dto.setId(terchief.getId());
        dto.setFirstName(terchief.getFirstName());
        dto.setLastName(terchief.getLastName());
        dto.setMotherLastName(terchief.getMotherLast());
        dto.setNotes(terchief.getNotes());
        return dto;
    }

    public DcDealerGroupDto convertDealerGroup(DcDealerGroup dealerGroup) {
        DcDealerGroupDto dto = new DcDealerGroupDto();
        dto.setId(dealerGroup.getId());
        dto.setName(dealerGroup.getName());
        dto.setStatus(dealerGroup.getDcRecordStatusId());
//        if(dealerGroup.getDcDealerList() != null){
//            dto.setDealers(dealerGroup.getDcDealerList().stream().map(this::convertDealerWithoutDealerGroups).collect(Collectors.toList()));
//        }
        return dto;
    }

    private DcDealerGroupDto convertDealerGroupWithoutDealers(DcDealerGroup dealerGroup) {
        DcDealerGroupDto dto = new DcDealerGroupDto();
        dto.setId(dealerGroup.getId());
        dto.setName(dealerGroup.getName());
        dto.setStatus(dealerGroup.getDcRecordStatusId());
        return dto;
    }


    public DcFacilityDto convertFacility(DcFacility facility) {
        DcFacilityDto dto = new DcFacilityDto();
        dto.setId(facility.getId());
        dto.setConcept(facility.getConcept());
        dto.setDescription(facility.getDescription());
        return dto;
    }

    public DcOperationCodeDto convertOperationCode(DcOperationCode operationCode) {
        DcOperationCodeDto dto = new DcOperationCodeDto();
        dto.setId(operationCode.getId());
        dto.setCode(operationCode.getCode());
        dto.setDescription(operationCode.getDescription());
        dto.setServiceTypes(operationCode.getServiceTypes().stream().map(this::convertServiceType).collect(Collectors.toList()));
        return dto;
    }

    public DcServiceTypeDto convertServiceType(DcServiceType serviceType) {
        DcServiceTypeDto dto = new DcServiceTypeDto();
        dto.setId(serviceType.getId());
        dto.setName(serviceType.getName());
        return dto;
    }

    public DcOrderTypeDto convertOrderType(DcOrderType orderType) {
        DcOrderTypeDto dto = new DcOrderTypeDto();
        dto.setId(orderType.getId());
        dto.setCode(orderType.getCode());
        dto.setDescription(orderType.getDescription());
        dto.setServicesTypes(orderType.getDcServicesTypes().stream().map(this::convertServiceType).collect(Collectors.toList()));
        return dto;
    }

    public DcSystemServiceDto convertSystemService(DcSystemService systemService) {
        DcSystemServiceDto dto = new DcSystemServiceDto();
        dto.setId(systemService.getId());
        dto.setName(systemService.getName());
        return dto;
    }

    public DcModelDto convertModel(DcModel model) {
        DcModelDto dto = new DcModelDto();
        dto.setId(model.getId());
        dto.setCode(model.getCode());
        dto.setBrand(model.getBrand());
        dto.setName(model.getName());
        if(model.getYear() != null){
            dto.setYear(Integer.parseInt(model.getYear()));
        }
        dto.setAssemblyLocation(model.getAssemblyLocation());
        dto.setExtColorCode(model.getExtColorCode());
        dto.setExtColorName(model.getExtColorName());
        dto.setIntColorCode(model.getIntColorCode());
        if(model.getAccount() != null){
            dto.setAccount(convertAccountWithoutModel(model.getAccount()));
        }
        dto.setDescription(model.getDescription());
        dto.setStatus(model.getDcRecordStatusId());
        dto.setSystemServices(model.getDcSystemServices().stream().map(this::convertSystemService).collect(Collectors.toList()));
        return dto;
    }

    private DcModelDto convertModelWithoutAccount(DcModel model) {
        DcModelDto dto = new DcModelDto();
        dto.setId(model.getId());
        dto.setCode(model.getCode());
        dto.setBrand(model.getBrand());
        dto.setName(model.getName());
        if(model.getYear() != null){
            dto.setYear(Integer.parseInt(model.getYear()));
        }
        dto.setAssemblyLocation(model.getAssemblyLocation());
        dto.setExtColorCode(model.getExtColorCode());
        dto.setExtColorName(model.getExtColorName());
        dto.setIntColorCode(model.getIntColorCode());
        dto.setDescription(model.getDescription());
        dto.setStatus(model.getDcRecordStatusId());
        dto.setSystemServices(model.getDcSystemServices().stream().map(this::convertSystemService).collect(Collectors.toList()));
        return dto;
    }


    public DcCityDto convertCity(DcCity city) {
        DcCityDto dto = new DcCityDto();
        dto.setId(city.getId());
        dto.setName(city.getName());
        dto.setState(convertStateWithoutCities(city.getDcStateId()));
        return dto;
    }

    public DcStateDto convertState(DcState state){
        DcStateDto dto = new DcStateDto();
        dto.setId(state.getId());
        dto.setName(state.getName());
        dto.setCities(state.getDcCityList().stream().map(this::convertCity).collect(Collectors.toList()));
        return dto;
    }

    private DcStateDto convertStateWithoutCities(DcState state){
        DcStateDto dto = new DcStateDto();
        dto.setId(state.getId());
        dto.setName(state.getName());
        return dto;
    }

    public DcWorkshopDto convertWorkshop(DcWorkshop workshop){
        DcWorkshopDto dto = new DcWorkshopDto();
        dto.setId(workshop.getId());
        dto.setName(workshop.getName());
        return dto;
    }

    public DcDealerDto convertDealer(DcDealer dealer) {
        DcDealerDto dto = new DcDealerDto();
        dto.setId(dealer.getId());
        dto.setDealerNumber(dealer.getDealerNumber());
        dto.setName(dealer.getName());
        dto.setBusinessName(dealer.getBusinessName());
        dto.setRfc(dealer.getRfc());
        dto.setCity(convertCity(dealer.getDcCityId()));
        dto.setStreet(dealer.getAddrStreet());
        dto.setNeighborhood(dealer.getAddrNeighborhood());
        if (dealer.getAddrPostcode() != null) {
            dto.setPostCode(Integer.parseInt(dealer.getAddrPostcode()));
        }
        dto.setDealerGroup(convertDealerGroupWithoutDealers(dealer.getDcDealerGroup()));
        dto.setDealerGroup(convertDealerGroupWithoutDealers(dealer.getDcDealerGroup()));
        dto.setTerchief(convertTerchief(dealer.getDcTerchief()));
        dto.setWorkshop(convertWorkshop(dealer.getDcWorkshopId()));
        dto.setStatus(dealer.getDcRecordStatusId());
        return dto;
    }

    private DcDealerDto convertDealerWithoutDealerGroups(DcDealer dealer) {
        DcDealerDto dto = new DcDealerDto();
        dto.setId(dealer.getId());
        dto.setDealerNumber(dealer.getDealerNumber());
        dto.setName(dealer.getName());
        dto.setBusinessName(dealer.getBusinessName());
        dto.setRfc(dealer.getRfc());
        dto.setCity(convertCity(dealer.getDcCityId()));
        dto.setStreet(dealer.getAddrStreet());
        dto.setNeighborhood(dealer.getAddrNeighborhood());
        if (dealer.getAddrPostcode() != null) {
            dto.setPostCode(Integer.parseInt(dealer.getAddrPostcode()));
        }
        dto.setTerchief(convertTerchief(dealer.getDcTerchief()));
        dto.setWorkshop(convertWorkshop(dealer.getDcWorkshopId()));
        dto.setStatus(dealer.getDcRecordStatusId());
        return dto;
    }

    public DcFacilityXDealerDto convertFacilityXDealer(DcFacilityXDealer facilityXDealer) {
        DcFacilityXDealerDto dto = new DcFacilityXDealerDto();
        Long facilityId = facilityXDealer.getDcFacilityXDealerPK().getDcFacilityId();
        Long dealerId = facilityXDealer.getDcFacilityXDealerPK().getDcDealerId();

        dto.setFacility(facilityService.findOneDto(facilityId));
        dto.setDealer(dealerService.findOneDto(dealerId));
        dto.setQuantity(facilityXDealer.getQuantity());
        return dto;
    }

    public DcPositionDto convertPosition(DcPosition position){
        DcPositionDto dto = new DcPositionDto();
        dto.setId(position.getId());
        dto.setName(position.getNameDescription());
        dto.setJobId(position.getJobId());
        return dto;
    }

    public DcContactXDealerDto convertContactXDealer(DcContactXDealer contactXDealer){
        DcContactXDealerDto dto = new DcContactXDealerDto();
        dto.setId(contactXDealer.getId());
        dto.setContact(convertContact(contactXDealer.getContact()));
        dto.setDealer(dealerService.findOneDto(contactXDealer.getDealerId()));
        dto.setPosition(convertPosition(contactXDealer.getPosition()));
        dto.setNotifications(contactXDealer.getNotifications().stream().map(this::convertSystemService).collect(Collectors.toList()));
        return dto;
    }

    public DcMenuCategoryDto convertMenuCategory(DcMenuCategory menuCategory){
        DcMenuCategoryDto dto = new DcMenuCategoryDto();
        dto.setId(menuCategory.getId());
        dto.setName(menuCategory.getName());
        dto.setOrder(menuCategory.getOrder());
        if(menuCategory.getViews() != null){
            dto.setViews(menuCategory.getViews().stream().map(this::convertView).collect(Collectors.toList()));
        }
        return dto;
    }

    private DcMenuCategoryDto convertMenuCategoryWithoutViews(DcMenuCategory menuCategory){
        DcMenuCategoryDto dto = new DcMenuCategoryDto();
        dto.setId(menuCategory.getId());
        dto.setName(menuCategory.getName());
        dto.setOrder(menuCategory.getOrder());
        return dto;
    }

    public DcViewDto convertView(DcView view){
        DcViewDto dto = new DcViewDto();
        dto.setId(view.getId());
        dto.setName(view.getName());
        dto.setFriendlyName(view.getFriendlyName());
        dto.setRoute(view.getRoute());
        dto.setOrder(view.getOrder());
        if(view.getMenuCategory() != null) {
            dto.setMenuCategory(convertMenuCategoryWithoutViews(view.getMenuCategory()));
        }
        if(view.getViewActions() != null){
            dto.setViewActions(view.getViewActions().stream().map(this::convertViewAction).collect(Collectors.toList()));
        }
        return dto;
    }

    private DcViewDto convertViewWithoutViewActions(DcView view){
        DcViewDto dto = new DcViewDto();
        dto.setId(view.getId());
        dto.setName(view.getName());
        dto.setFriendlyName(view.getFriendlyName());
        dto.setRoute(view.getRoute());
        dto.setOrder(view.getOrder());
        if(view.getMenuCategory() != null) {
            dto.setMenuCategory(convertMenuCategoryWithoutViews(view.getMenuCategory()));
        }
        return dto;
    }

    public DcViewActionDto convertViewAction(DcViewAction viewAction){
        DcViewActionDto dto = new DcViewActionDto();
        dto.setId(viewAction.getId());
        dto.setShortName(viewAction.getShortName());
        dto.setFriendlyName(viewAction.getFriendlyName());
        if(viewAction.getView() != null) {
            dto.setView(convertViewWithoutViewActions(viewAction.getView()));
        }
        if(viewAction.getAssignedRoleList() != null) {
            dto.setAssignedRoles(viewAction.getAssignedRoleList().stream().map(this::convertRole).collect(Collectors.toList()));
        }
        return dto;
    }

    private DcViewActionDto convertViewActionWithoutRoles(DcViewAction viewAction){
        DcViewActionDto dto = new DcViewActionDto();
        dto.setId(viewAction.getId());
        dto.setShortName(viewAction.getShortName());
        dto.setFriendlyName(viewAction.getFriendlyName());
        if(viewAction.getView() != null) {
            dto.setView(convertViewWithoutViewActions(viewAction.getView()));
        }
        return dto;
    }

    public DcRoleDto convertRole(DcRole role){
        DcRoleDto dto = new DcRoleDto();
        dto.setId(role.getId());
        dto.setName(role.getName());
        dto.setDescription(role.getDescription());
        if(role.getPositions() != null){
            dto.setPositions(role.getPositions().stream().map(this::convertPosition).collect(Collectors.toList()));
        }
        if(role.getPermissionList() != null){
            dto.setPermissions(role.getPermissionList().stream().map(this::convertViewActionWithoutRoles).collect(Collectors.toList()));
        }
        if(role.getDcLdapGroupList() != null){
            dto.setLdapGroups(role.getDcLdapGroupList().stream().map(this::convertLdapGroupWithoutRoles).collect(Collectors.toList()));
        }
        return dto;
    }

    private DcRoleDto convertRoleWithoutLdapGroups(DcRole role){
        DcRoleDto dto = new DcRoleDto();
        dto.setId(role.getId());
        dto.setName(role.getName());
        dto.setDescription(role.getDescription());
        if(role.getPositions() != null){
            dto.setPositions(role.getPositions().stream().map(this::convertPosition).collect(Collectors.toList()));
        }
        if(role.getPermissionList() != null){
            dto.setPermissions(role.getPermissionList().stream().map(this::convertViewActionWithoutRoles).collect(Collectors.toList()));
        }
        return dto;
    }

    public DcLdapGroupDto convertLdapGroup(DcLdapGroup ldapGroup){
        DcLdapGroupDto dto = new DcLdapGroupDto();
        dto.setId(ldapGroup.getId());
        dto.setName(ldapGroup.getName());
        dto.setLdapId(ldapGroup.getLdapId());
        if(ldapGroup.getDcRoleList() != null){
            dto.setRoles(ldapGroup.getDcRoleList().stream().map(this::convertRoleWithoutLdapGroups).collect(Collectors.toList()));
        }
        return dto;
    }

    private DcLdapGroupDto convertLdapGroupWithoutRoles(DcLdapGroup ldapGroup){
        DcLdapGroupDto dto = new DcLdapGroupDto();
        dto.setId(ldapGroup.getId());
        dto.setName(ldapGroup.getName());
        dto.setLdapId(ldapGroup.getLdapId());
        return dto;
    }

    public DcFinancialStateDto convertFinancialState(DcFinancialState financialState){
        DcFinancialStateDto dto = new DcFinancialStateDto();
        dto.setId(financialState.getId());
        dto.setDealer(convertDealer(financialState.getDealer()));
        dto.setYear(financialState.getYear());
        dto.setMonth(financialState.getMonth());
        dto.setLimitDate(financialState.getLimitDate());
        dto.setStatuses(financialState.getStatuses().stream().map(this::convertFinancialStateXStatusWithoutFinancialState).collect(Collectors.toList()));
        dto.setAccountValues(financialState.getAccountValues().stream().map(this::convertFinancialStateXAccountValueWithoutFinancialState).collect(Collectors.toList()));
        return dto;
    }

    public DcFinancialStateDto convertFinancialStateMin(DcFinancialState financialState){
        DcFinancialStateDto dto = new DcFinancialStateDto();
        dto.setId(financialState.getId());
        dto.setDealer(convertDealer(financialState.getDealer()));
        dto.setYear(financialState.getYear());
        dto.setMonth(financialState.getMonth());
        int date = Calendar.getInstance().get(Calendar.MONTH) + 1;
        dto.setFlatBtnExcel(financialState.getMonth() == date);
        dto.setLimitDate(financialState.getLimitDate());
        dto.setStatuses(financialState.getStatuses().stream().map(this::convertFinancialStateXStatusMin).collect(Collectors.toList()));
        return dto;
    }

    private DcFinancialStateDto convertFinancialStateWithoutAccountValues(DcFinancialState financialState){
        DcFinancialStateDto dto = new DcFinancialStateDto();
        dto.setId(financialState.getId());
        dto.setDealer(convertDealer(financialState.getDealer()));
        dto.setYear(financialState.getYear());
        dto.setMonth(financialState.getMonth());
        dto.setLimitDate(financialState.getLimitDate());
        dto.setStatuses(financialState.getStatuses().stream().map(this::convertFinancialStateXStatus).collect(Collectors.toList()));
        return dto;
    }

    private DcFinancialStateDto convertFinancialStateWithoutStatuses(DcFinancialState financialState){
        DcFinancialStateDto dto = new DcFinancialStateDto();
        dto.setId(financialState.getId());
        dto.setDealer(convertDealer(financialState.getDealer()));
        dto.setYear(financialState.getYear());
        dto.setMonth(financialState.getMonth());
        dto.setLimitDate(financialState.getLimitDate());
        return dto;
    }

    public DcFinancialStateStatusDto convertFinancialStateStatus(DcFinancialStateStatus financialStateStatus){
        DcFinancialStateStatusDto dto = new DcFinancialStateStatusDto();
        dto.setId(financialStateStatus.getId());
        dto.setName(financialStateStatus.getName());
        dto.setDescription(financialStateStatus.getDescription());
        return dto;
    }

    public DcFinancialStateXStatusDto convertFinancialStateXStatus(DcFinancialStateXStatus financialStateXStatus){
        DcFinancialStateXStatusDto dto = new DcFinancialStateXStatusDto();
        dto.setId(financialStateXStatus.getId());
        dto.setDateAssignment(financialStateXStatus.getDateAssignment());
        dto.setFinancialState(convertFinancialStateWithoutStatuses(financialStateXStatus.getFinancialState()));
        dto.setStatus(convertFinancialStateStatus(financialStateXStatus.getStatus()));
        dto.setEmail(financialStateXStatus.getEmail());
        dto.setUsername(financialStateXStatus.getUsername());
        dto.setComments(financialStateXStatus.getComments());
        if(financialStateXStatus.getArea() != null){
            dto.setArea(convertEvaluationArea(financialStateXStatus.getArea()));
        }
        if(financialStateXStatus.getUserType() != null){
            dto.setUserType(convertUserType(financialStateXStatus.getUserType()));
        }
        if(financialStateXStatus.getErrors() != null){
            dto.setErrors(financialStateXStatus.getErrors().stream().map(this::convertAccountError).collect(Collectors.toList()));
        }
        return dto;
    }

    public DcFinancialStateXStatusDto convertFinancialStateXStatusMin(DcFinancialStateXStatus financialStateXStatus){
        DcFinancialStateXStatusDto dto = new DcFinancialStateXStatusDto();
        dto.setId(financialStateXStatus.getId());
        dto.setDateAssignment(financialStateXStatus.getDateAssignment());
        dto.setFinancialState(convertFinancialStateWithoutStatuses(financialStateXStatus.getFinancialState()));
        dto.setStatus(convertFinancialStateStatus(financialStateXStatus.getStatus()));
        dto.setEmail(financialStateXStatus.getEmail());
        dto.setUsername(financialStateXStatus.getUsername());
        dto.setComments(financialStateXStatus.getComments());
        if(financialStateXStatus.getArea() != null){
            dto.setArea(convertEvaluationArea(financialStateXStatus.getArea()));
        }
        if(financialStateXStatus.getUserType() != null){
            dto.setUserType(convertUserType(financialStateXStatus.getUserType()));
        }
        return dto;
    }

    private DcFinancialStateXStatusDto convertFinancialStateXStatusWithoutFinancialState(DcFinancialStateXStatus financialStateXStatus){
        DcFinancialStateXStatusDto dto = new DcFinancialStateXStatusDto();
        dto.setId(financialStateXStatus.getId());
        dto.setDateAssignment(financialStateXStatus.getDateAssignment());
        dto.setFinancialState(convertFinancialStateWithoutStatuses(financialStateXStatus.getFinancialState()));
        dto.setStatus(convertFinancialStateStatus(financialStateXStatus.getStatus()));
        dto.setEmail(financialStateXStatus.getEmail());
        dto.setUsername(financialStateXStatus.getUsername());
        dto.setComments(financialStateXStatus.getComments());
        if(financialStateXStatus.getArea() != null){
            dto.setArea(convertEvaluationArea(financialStateXStatus.getArea()));
        }
        if(financialStateXStatus.getUserType() != null){
            dto.setUserType(convertUserType(financialStateXStatus.getUserType()));
        }
        if(financialStateXStatus.getErrors() != null){
            dto.setErrors(financialStateXStatus.getErrors().stream().map(this::convertAccountError).collect(Collectors.toList()));
        }
        return dto;
    }

    public DcFinancialStateXStatusDto convertFinancialStateXStatusWithoutErrors(DcFinancialStateXStatus financialStateXStatus){
        DcFinancialStateXStatusDto dto = new DcFinancialStateXStatusDto();
        dto.setId(financialStateXStatus.getId());
        dto.setDateAssignment(financialStateXStatus.getDateAssignment());
        dto.setFinancialState(convertFinancialStateWithoutStatuses(financialStateXStatus.getFinancialState()));
        dto.setStatus(convertFinancialStateStatus(financialStateXStatus.getStatus()));
        dto.setEmail(financialStateXStatus.getEmail());
        dto.setUsername(financialStateXStatus.getUsername());
        dto.setComments(financialStateXStatus.getComments());
        if(financialStateXStatus.getArea() != null){
            dto.setArea(convertEvaluationArea(financialStateXStatus.getArea()));
        }
        if(financialStateXStatus.getUserType() != null){
            dto.setUserType(convertUserType(financialStateXStatus.getUserType()));
        }
        return dto;
    }

    public DcAccountDto convertAccount(DcAccount account){
        DcAccountDto dto = new DcAccountDto();
        dto.setId(account.getId());
        dto.setName(account.getName());
        dto.setAccountNumber(account.getAccountNumber());
        dto.setPage(account.getPage());
        dto.setFormula(account.getFormula());
        if(account.getAccountValues() != null){
            dto.setAccountValues(account.getAccountValues().stream().map(this::convertAccountValueWithoutAccount).collect(Collectors.toList()));
        }
        if(account.getComponent() != null){
            dto.setComponent(convertAccountComponent(account.getComponent()));
        }
        if(account.getModel() != null){
            dto.setModel(convertModelWithoutAccount(account.getModel()));
        }
        Boolean hasParent = account.getAccountParent() != null;
        Boolean hasChildren = account.getAccountChilds() != null && account.getAccountChilds().size() > 0;
        dto.setRelationshipCheck(new RelationshipCheck(hasParent, hasChildren));
        return dto;
    }

    public DcAccountDto convertAccountWithoutModel(DcAccount account){
        DcAccountDto dto = new DcAccountDto();
        dto.setId(account.getId());
        dto.setName(account.getName());
        dto.setAccountNumber(account.getAccountNumber());
        dto.setPage(account.getPage());
        dto.setFormula(account.getFormula());
        if(account.getAccountValues() != null){
            dto.setAccountValues(account.getAccountValues().stream().map(this::convertAccountValueWithoutAccount).collect(Collectors.toList()));
        }
        if(account.getComponent() != null){
            dto.setComponent(convertAccountComponent(account.getComponent()));
        }
        Boolean hasParent = account.getAccountParent() != null;
        Boolean hasChildren = account.getAccountChilds() != null && account.getAccountChilds().size() > 0;
        dto.setRelationshipCheck(new RelationshipCheck(hasParent, hasChildren));
        return dto;
    }


    private DcAccountDto convertAccountWithoutAccountValues(DcAccount account){
        DcAccountDto dto = new DcAccountDto();
        dto.setId(account.getId());
        dto.setName(account.getName());
        dto.setAccountNumber(account.getAccountNumber());
        dto.setPage(account.getPage());
        dto.setFormula(account.getFormula());
        if(account.getComponent() != null){
            dto.setComponent(convertAccountComponent(account.getComponent()));
        }
        if(account.getModel() != null){
            dto.setModel(convertModelWithoutAccount(account.getModel()));
        }
        Boolean hasParent = account.getAccountParent() != null;
        Boolean hasChildren = account.getAccountChilds() != null && account.getAccountChilds().size() > 0;
        dto.setRelationshipCheck(new RelationshipCheck(hasParent, hasChildren));
        return dto;
    }

    public DcAccountRelationshipDto convertAccountRelationship(DcAccountRelationship relationship){
        DcAccountRelationshipDto dto = new DcAccountRelationshipDto();
        dto.setParent(convertAccount(relationship.getAccountParent()));
        dto.setChild(convertAccount(relationship.getAccountChild()));
        dto.setOrder(relationship.getOrder());
        return dto;
    }

    public DcTypeAccountValueDto convertTypeAccountValue(DcTypeAccountValue typeAccountValue){
        DcTypeAccountValueDto dto = new DcTypeAccountValueDto();
        dto.setId(typeAccountValue.getId());
        dto.setName(typeAccountValue.getName());
        Boolean hasParent = typeAccountValue.getTypeAccountParent() != null;
        if(hasParent){
            dto.setParent(convertTypeAccountValueRelationshipWithoutChild(typeAccountValue.getTypeAccountParent()));
        }
        Boolean hasChildren = typeAccountValue.getTypeAccountChilds() != null && typeAccountValue.getTypeAccountChilds().size() > 0;
        dto.setRelationshipCheck(new RelationshipCheck(hasParent, hasChildren));
        return dto;
    }

    public DcTypeAccountValueRelationshipDto convertTypeAccountValueRelationship(DcTypeAccountValueRelationship relationship){
        DcTypeAccountValueRelationshipDto dto = new DcTypeAccountValueRelationshipDto();
        dto.setParent(convertTypeAccountValue(relationship.getTypeAccountParent()));
        dto.setChild(convertTypeAccountValue(relationship.getTypeAccountChild()));
        dto.setOrder(relationship.getOrder());
        return dto;
    }

    private DcTypeAccountValueRelationshipDto convertTypeAccountValueRelationshipWithoutChild(DcTypeAccountValueRelationship relationship){
        DcTypeAccountValueRelationshipDto dto = new DcTypeAccountValueRelationshipDto();
        if(relationship.getTypeAccountParent() != null){
            dto.setParent(convertTypeAccountValue(relationship.getTypeAccountParent()));
        }
        dto.setOrder(relationship.getOrder());
        return dto;
    }

    public DcAccountValueDto convertAccountValue(DcAccountValue accountValue){
        DcAccountValueDto dto = new DcAccountValueDto();
        dto.setId(accountValue.getId());
        dto.setReadOnly(accountValue.getReadOnly());
        dto.setRequired(accountValue.getRequired());
        dto.setDefaultValue(accountValue.getDefaultValue());
        dto.setAccount(convertAccountWithoutAccountValues(accountValue.getAccount()));
        dto.setTypeValue(convertTypeAccountValue(accountValue.getTypeAccountValue()));
        if(accountValue.getFormula() != null){
            dto.setFormula(convertFormulaWithoutAccountValue(accountValue.getFormula()));
        }
        return dto;
    }

    private DcAccountValueDto convertAccountValueWithoutAccount(DcAccountValue accountValue){
        DcAccountValueDto dto = new DcAccountValueDto();
        dto.setId(accountValue.getId());
        dto.setReadOnly(accountValue.getReadOnly());
        dto.setRequired(accountValue.getRequired());
        dto.setDefaultValue(accountValue.getDefaultValue());
        dto.setTypeValue(convertTypeAccountValue(accountValue.getTypeAccountValue()));
        if(accountValue.getFormula() != null){
            dto.setFormula(convertFormulaWithoutAccountValue(accountValue.getFormula()));
        }
        return dto;
    }

    private DcAccountValueDto convertAccountValueWithoutFormula(DcAccountValue accountValue){
        DcAccountValueDto dto = new DcAccountValueDto();
        dto.setId(accountValue.getId());
        dto.setReadOnly(accountValue.getReadOnly());
        dto.setRequired(accountValue.getRequired());
        dto.setDefaultValue(accountValue.getDefaultValue());
        dto.setAccount(convertAccountWithoutAccountValues(accountValue.getAccount()));
        dto.setTypeValue(convertTypeAccountValue(accountValue.getTypeAccountValue()));
        return dto;
    }

    public DcFormulaDto convertFormula(DcFormula formula){
        DcFormulaDto dto = new DcFormulaDto();
        dto.setId(formula.getId());
        dto.setOwnerAccount(convertAccountValueWithoutFormula(formula.getOwnerAccountValue()));
        dto.setFormula(formula.getFormula());
        dto.setTerms(formula.getTerms().stream().map(this::convertFormulaTermWithoutFormula).collect(Collectors.toList()));
        return dto;
    }

    private DcFormulaDto convertFormulaWithoutAccountValue(DcFormula formula){
        DcFormulaDto dto = new DcFormulaDto();
        dto.setId(formula.getId());
        dto.setFormula(formula.getFormula());
        dto.setTerms(formula.getTerms().stream().map(this::convertFormulaTermWithoutFormula).collect(Collectors.toList()));
        return dto;
    }

    private DcFormulaDto convertFormulaWithoutTerms(DcFormula formula){
        DcFormulaDto dto = new DcFormulaDto();
        dto.setId(formula.getId());
        dto.setOwnerAccount(convertAccountValueWithoutFormula(formula.getOwnerAccountValue()));
        dto.setFormula(formula.getFormula());
        return dto;
    }

    public DcFormulaTermDto convertFormulaTerm(DcFormulaTerm term){
        DcFormulaTermDto dto = new DcFormulaTermDto();
        dto.setFormula(convertFormulaWithoutTerms(term.getFormula()));
        dto.setAccountTerm(convertAccountValue(term.getAccountValueTerm()));
        dto.setOrder(term.getOrder());
        return dto;
    }

    private DcFormulaTermDto convertFormulaTermWithoutFormula(DcFormulaTerm term){
        DcFormulaTermDto dto = new DcFormulaTermDto();
        dto.setAccountTerm(convertAccountValueWithoutFormula(term.getAccountValueTerm()));
        dto.setOrder(term.getOrder());
        return dto;
    }

    public DcFinancialStateXAccountValueDto convertFinancialStateXAccountValue(DcFinancialStateXAccountValue financialStateXAccountValue){
        DcFinancialStateXAccountValueDto dto = new DcFinancialStateXAccountValueDto();
        dto.setId(financialStateXAccountValue.getId());
        dto.setValue(financialStateXAccountValue.getValue());
        dto.setAccountValue(convertAccountValue(financialStateXAccountValue.getAccountValue()));
        dto.setFinancialState(convertFinancialStateWithoutAccountValues(financialStateXAccountValue.getFinancialState()));
        if(financialStateXAccountValue.getErrors() != null){
            dto.setErrors(financialStateXAccountValue.getErrors().stream().map(this::convertAccountError).collect(Collectors.toList()));
        }
        return dto;
    }

    public DcFinancialStateXAccountValueDto convertFinancialStateXAccountValueSimple(DcFinancialStateXAccountValue financialStateXAccountValue){
        DcFinancialStateXAccountValueDto dto = new DcFinancialStateXAccountValueDto();
        dto.setId(financialStateXAccountValue.getId());
        dto.setValue(financialStateXAccountValue.getValue());
        DcAccountValueDto accountValueDto = new DcAccountValueDto();
        accountValueDto.setId(financialStateXAccountValue.getAccountValue().getId());
        dto.setAccountValue(accountValueDto);
        DcFinancialStateDto financialStateDto = new DcFinancialStateDto();
        financialStateDto.setId(financialStateXAccountValue.getFinancialState().getId());
        dto.setFinancialState(financialStateDto);
        return dto;
    }

    private DcFinancialStateXAccountValueDto convertFinancialStateXAccountValueWithoutFinancialState(DcFinancialStateXAccountValue financialStateXAccountValue){
        DcFinancialStateXAccountValueDto dto = new DcFinancialStateXAccountValueDto();
        dto.setId(financialStateXAccountValue.getId());
        dto.setValue(financialStateXAccountValue.getValue());
        dto.setAccountValue(convertAccountValue(financialStateXAccountValue.getAccountValue()));
        if(financialStateXAccountValue.getErrors() != null){
            dto.setErrors(financialStateXAccountValue.getErrors().stream().map(this::convertAccountError).collect(Collectors.toList()));
        }
        return dto;
    }

    private DcFinancialStateXAccountValueDto convertFinancialStateXAccountValueWithoutErrors(DcFinancialStateXAccountValue financialStateXAccountValue){
        DcFinancialStateXAccountValueDto dto = new DcFinancialStateXAccountValueDto();
        dto.setId(financialStateXAccountValue.getId());
        dto.setValue(financialStateXAccountValue.getValue());
        dto.setAccountValue(convertAccountValue(financialStateXAccountValue.getAccountValue()));
        return dto;
    }

    public DcAccountErrorDto convertAccountError(DcAccountError accountError){
        DcAccountErrorDto dto = new DcAccountErrorDto();
        dto.setId(accountError.getId());
        dto.setCheckDate(accountError.getCheckDate());
        dto.setValueError(accountError.getValueError());
        if(accountError.getStatus() != null){
            DcFinancialStateXStatusDto statusDto = new DcFinancialStateXStatusDto();
            statusDto.setId(accountError.getStatus().getId());
            dto.setStatus(statusDto);
        }
        if(accountError.getAccountValue() != null){
            DcFinancialStateXAccountValueDto accountValueDto = new DcFinancialStateXAccountValueDto();
            accountValueDto.setId(accountError.getAccountValue().getId());
            dto.setAccountValue(accountValueDto);
        }
        return dto;
    }

    public DcAccountErrorDto convertAccountErrorSingle(DcAccountError accountError){
        DcAccountErrorDto dto = new DcAccountErrorDto();
        dto.setId(accountError.getId());
        dto.setCheckDate(accountError.getCheckDate());
        dto.setValueError(accountError.getValueError());
        if(accountError.getStatus() != null){
            dto.setStatus(convertFinancialStateXStatusWithoutErrors(accountError.getStatus()));
        }
        if(accountError.getAccountValue() != null){
            dto.setAccountValue(convertFinancialStateXAccountValueWithoutErrors(accountError.getAccountValue()));
        }
        return dto;
    }

    public DcAccountComponentDto convertAccountComponent(DcAccountComponent component){
        DcAccountComponentDto dto = new DcAccountComponentDto();
        dto.setId(component.getId());
        dto.setName(component.getName());
        return dto;
    }

    public DcUserTypeDto convertUserType(DcUserType userType){
        DcUserTypeDto dto = new DcUserTypeDto();
        dto.setId(userType.getId());
        dto.setName(userType.getName());
        return dto;
    }

    public DcEvaluationAreaDto convertEvaluationArea(DcEvaluationArea evaluationArea){
        DcEvaluationAreaDto dto = new DcEvaluationAreaDto();
        dto.setId(evaluationArea.getId());
        dto.setName(evaluationArea.getName());
        return dto;
    }
}
