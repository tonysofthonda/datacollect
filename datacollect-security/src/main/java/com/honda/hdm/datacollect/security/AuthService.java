package com.honda.hdm.datacollect.security;

import com.honda.hdm.datacollect.model.entity.DcMenuCategory;
import com.honda.hdm.datacollect.model.entity.DcView;
import com.honda.hdm.datacollect.model.entity.DcViewAction;
import com.honda.hdm.datacollect.model.entity.auth.DcRole;
import com.honda.hdm.datacollect.model.entity.dto.auth.DcMenuCategoryDto;
import com.honda.hdm.datacollect.model.entity.dto.auth.DcRoleDto;
import com.honda.hdm.datacollect.security.helpers.Util;
import com.honda.hdm.datacollect.security.model.LdapUserDetails;
import com.honda.hdm.datacollect.security.model.SamlUserDetails;
import com.honda.hdm.datacollect.security.model.UserDetailsDTO;
import com.honda.hdm.datacollect.service.converter.DtoConverter;
import com.honda.hdm.datacollect.service.domain.impl.DcMenuCategoryService;
import com.honda.hdm.datacollect.service.domain.impl.auth.IDcRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class AuthService {
    @Autowired
    IDcRoleService roleService;

    @Autowired
    DcMenuCategoryService menuCategoryService;

    @Autowired
    DtoConverter dtoConverter;

    public List<DcRole> getRolesOfSession() {
        UserDetailsDTO userSession = Util.getUser();
        List<DcRole> roles = roleService.findAll();
        List<DcRole> rolesOfSession = new ArrayList<>();

        if (userSession instanceof LdapUserDetails){
            LdapUserDetails ldapSession = (LdapUserDetails) userSession;
            for (String ldapGroup: ldapSession.getMemberOf()){
                List<DcRole> finalRolesOfSession = rolesOfSession;
                List<DcRole> rolesOfLdapGroup = roles.stream()
                        .filter(role->
                                containLdapGroup(role, ldapGroup) && !finalRolesOfSession.stream().anyMatch(roleOfSession -> roleOfSession.getName().equals(role.getName()))).collect(Collectors.toList());
                rolesOfSession = Stream.concat(rolesOfSession.stream(), rolesOfLdapGroup.stream()).collect(Collectors.toList());
            }
        }else if(userSession instanceof SamlUserDetails){
            SamlUserDetails samlSession = (SamlUserDetails) userSession;
            for (SimpleGrantedAuthority dealerRole : samlSession.getRoles()) {
                List<DcRole> finalRolesOfSession = rolesOfSession;
                List<DcRole> rolesOfSaml = roles.stream().filter(role ->
                        containJobCode(role, dealerRole.getAuthority()) && !finalRolesOfSession.stream().anyMatch(roleOfSession -> roleOfSession.getName().equals(role.getName()))).collect(Collectors.toList());
                rolesOfSession = Stream.concat(rolesOfSession.stream(), rolesOfSaml.stream()).collect(Collectors.toList());
            }
        }else {
            return null;
        }
        return rolesOfSession;
    }

    public List<DcRoleDto> getRolesOfSessionDto() {
        return getRolesOfSession().stream().map(dtoConverter::convertRole).collect(Collectors.toList());
    }

    public List<DcMenuCategory> getMenusOfSession(){
        List<DcRole> roles = getRolesOfSession();
        List<DcMenuCategory> menuCategories = menuCategoryService.findAll();
        List<DcMenuCategory> menuCategoriesOfSession = new ArrayList<>();
        for (DcMenuCategory menu : menuCategories){
            List<DcView> views = new ArrayList<>();
            for (DcView view : menu.getViews()){
                List<DcViewAction> viewActions = view.getViewActions().stream().filter(viewAction -> containRole(viewAction.getAssignedRoleList(), roles)).collect(Collectors.toList());
                if(viewActions.size() > 0){
                    view.setViewActions(viewActions);
                    views.add(view);
                }
            }
            if(views.size() > 0){
                menu.setViews(views);
                menuCategoriesOfSession.add(menu);
            }
        }
        return menuCategoriesOfSession;
    }

    public List<DcMenuCategoryDto> getMenusOfSessionDto(){
        return getMenusOfSession().stream().map(dtoConverter::convertMenuCategory).collect(Collectors.toList());
    }

    private Boolean containLdapGroup(DcRole role, String ldapGroup){
        return role.getDcLdapGroupList().stream().anyMatch(roleLdapGroup -> roleLdapGroup.getLdapId().equals(ldapGroup));
    }

    private Boolean containJobCode(DcRole role, String jobCode){
        return role.getPositions().stream().anyMatch(position -> position.getJobId().equals(jobCode));
    }

    private Boolean containRole(List<DcRole> roleList1, List<DcRole> roleList2){
        return roleList1
                .stream().map(DcRole::getName)
                .anyMatch(roleList2
                        .stream().map(DcRole::getName)
                        .collect(Collectors.toSet())::contains);
    }

}
