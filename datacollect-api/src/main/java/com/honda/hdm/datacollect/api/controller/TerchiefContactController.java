package com.honda.hdm.datacollect.api.controller;

import com.honda.hdm.datacollect.model.entity.dto.DcContactDto;
import com.honda.hdm.datacollect.response.FriendlyError;
import com.honda.hdm.datacollect.service.domain.IDcTerchiefService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/terchief/contacts")
public class TerchiefContactController {

    @Autowired
    IDcTerchiefService terchiefService;

    @GetMapping("/{id}")
    public ResponseEntity<?> getContacts(
            @PathVariable Long id,
            @RequestParam(name = "page", defaultValue = "0") Integer page,
            @RequestParam(name = "elementsByPage", defaultValue = "10") Integer elementsByPage) {
        if (terchiefService.findOne(id) == null) {
            Model response = new ExtendedModelMap();
            response.addAttribute("friendlyError", new FriendlyError("Terchief not found", "warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(terchiefService.getEnabledContactsDto(id, PageRequest.of(page, elementsByPage)),
                HttpStatus.OK);
    }

    @GetMapping("/filter/{id}/{term}")
    public ResponseEntity<?> filterContact(
            @RequestParam(name = "page", defaultValue = "0") Integer page,
            @RequestParam(name = "elementsByPage", defaultValue = "10") Integer elementsByPage,
            @PathVariable Long id,
            @PathVariable String term) {
        if (terchiefService.findOne(id) == null) {
            Model response = new ExtendedModelMap();
            response.addAttribute("friendlyError", new FriendlyError("Terchief not found", "warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(terchiefService.filterContactsByTerm(id, term, PageRequest.of(page, elementsByPage)), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<?> addContact(
            @RequestBody @Valid DcContactDto contact,
            BindingResult result) {
        Model response = new ExtendedModelMap();
        if (result.hasErrors()) {
            response.addAttribute("msg", "Fields Not valids");
            result.getFieldErrors().stream().forEach(error -> {
                response.addAttribute(error.getField(), error.getDefaultMessage());
            });
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        if (contact.getTerchiefId() == null) {
            response.addAttribute("msg", "Terchief Id required");
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        if (terchiefService.findOne(contact.getTerchiefId()) == null) {
            response.addAttribute("friendlyError", new FriendlyError("Terchief not found", "warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        try {
            DcContactDto newContact = terchiefService.saveContact(contact.getTerchiefId(), contact);
            response.addAttribute("contact", newContact);
            response.addAttribute("msg", "Contact Added Successfully");
        } catch (Exception e) {
            response.addAttribute("msg", e.getMessage());
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }
}
