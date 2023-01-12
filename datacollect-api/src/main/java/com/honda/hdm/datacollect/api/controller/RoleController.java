package com.honda.hdm.datacollect.api.controller;

import com.honda.hdm.datacollect.api.helpers.FetchType;
import com.honda.hdm.datacollect.model.entity.dto.auth.DcRoleDto;
import com.honda.hdm.datacollect.response.FriendlyError;
import com.honda.hdm.datacollect.service.domain.IDcPositionService;
import com.honda.hdm.datacollect.service.domain.impl.auth.IDcLdapGroupService;
import com.honda.hdm.datacollect.service.domain.impl.auth.IDcRoleService;
import com.honda.hdm.datacollect.service.util.Helpers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/role")
public class RoleController {

    @Autowired
    IDcRoleService roleService;

    @Autowired
    IDcLdapGroupService ldapGroupService;

    @Autowired
    IDcPositionService positionService;

    @GetMapping("/list")
    public ResponseEntity<?> listRoles(
            @RequestParam(name = "page", defaultValue = "0") Integer page,
            @RequestParam(name = "elementsByPage", defaultValue = "10") Integer elementsByPage,
            @RequestParam(name = "fetchType", defaultValue = "lazy") String fetchType) {
        if (FetchType.LAZY.toString().equals(fetchType)) {
            return new ResponseEntity<>(roleService.findAllDto(PageRequest.of(page, elementsByPage)), HttpStatus.OK);
        } else if (FetchType.EAGER.toString().equals(fetchType)) {
            return new ResponseEntity<>(roleService.findAllDto(), HttpStatus.OK);
        } else {
            Model response = new ExtendedModelMap();
            response.addAttribute("msg", "fetchType required as request param");
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getRole(@PathVariable Long id) {
        DcRoleDto role = roleService.findOneDto(id);
        if (role == null) {
            Model response = new ExtendedModelMap();
            response.addAttribute("friendlyError", new FriendlyError("Role not found", "warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(role, HttpStatus.OK);
    }

    @GetMapping("/filter/{term}")
    public ResponseEntity<Page<DcRoleDto>> filterRole(
            @RequestParam(name = "page", defaultValue = "0") Integer page,
            @RequestParam(name = "elementsByPage", defaultValue = "10") Integer elementsByPage,
            @PathVariable String term) {
        return new ResponseEntity<>(roleService.findAllByTermDto(term,PageRequest.of(page, elementsByPage)), HttpStatus.OK);
    }

    @GetMapping("/name/{name}")
    public ResponseEntity<?> findRoleByName(@PathVariable String name) {
        return new ResponseEntity<>(roleService.findByNameDto(name), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<?> addRole(@RequestBody @Valid DcRoleDto role, BindingResult result) {
        Model response = new ExtendedModelMap();
        if (result.hasErrors()) {
            response.addAllAttributes(Helpers.getAllErrorsOfRequest(result));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }

        try {
            DcRoleDto newRole = roleService.saveDto(role);
            response.addAttribute("role", newRole);
            response.addAttribute("msg", "Role Added Successfully");
        } catch (Exception e) {
            e.printStackTrace();
            response.addAttribute("msg", e.getMessage());
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @PutMapping("/update/{id}")
    public ResponseEntity<?> updateRole(@PathVariable Long id, @RequestBody @Valid DcRoleDto role, BindingResult result) {
        Model response = new ExtendedModelMap();
        if (result.hasErrors()) {
            response.addAllAttributes(Helpers.getAllErrorsOfRequest(result));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }

        try {
            DcRoleDto editedRole = roleService.updateDto(role, id);
            if (editedRole == null) {
                response.addAttribute("friendlyError", new FriendlyError("Role not found", "warn"));
                return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
            }
            response.addAttribute("role", editedRole);
            response.addAttribute("msg", "Role Updated Successfully");
        } catch (Exception e) {
            e.printStackTrace();
            response.addAttribute("msg", e.getMessage());
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?> deleteRole(@PathVariable Long id) {
        Model response = new ExtendedModelMap();
        DcRoleDto role = roleService.findOneDto(id);
        if (role == null) {
            response.addAttribute("friendlyError", new FriendlyError("Role not found", "warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        if (ldapGroupService.findAllByRoleId(id).size() > 0) {
            response.addAttribute("friendlyError", new FriendlyError("This Role cant be deleted because have ldap groups","warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        if(positionService.findByRoleId(id).size() > 0){
            response.addAttribute("friendlyError", new FriendlyError("This Role cant be deleted because have a position assigned","warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        roleService.delete(id);
        response.addAttribute("msg", "Role Deleted Successfully");
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}
