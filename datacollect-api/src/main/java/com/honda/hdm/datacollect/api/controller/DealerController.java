package com.honda.hdm.datacollect.api.controller;

import com.honda.hdm.datacollect.api.helpers.FetchType;
import com.honda.hdm.datacollect.model.entity.dto.DcDealerDto;
import com.honda.hdm.datacollect.response.FriendlyError;
import com.honda.hdm.datacollect.service.domain.IDcDealerService;
import com.honda.hdm.datacollect.service.util.Helpers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/dealer")
public class DealerController {
    @Autowired
    IDcDealerService dealerService;
    
    @GetMapping("/")
    public ResponseEntity<?> getAllDealers() {
       return new ResponseEntity<>(dealerService.findAllDto(), HttpStatus.OK);
    }

    @GetMapping("/list")
    public ResponseEntity<?> listDealers(
            @RequestParam(name = "page", defaultValue = "0") Integer page,
            @RequestParam(name = "elementsByPage", defaultValue = "10") Integer elementsByPage,
            @RequestParam(name = "fetchType", defaultValue = "lazy") String fetchType) {
        if (fetchType.equals(FetchType.LAZY.toString())) {
            return new ResponseEntity<>(dealerService.findAllDto(PageRequest.of(page, elementsByPage)), HttpStatus.OK);
        } else if (fetchType.equals(FetchType.EAGER.toString())) {
            return new ResponseEntity<>(dealerService.findAllDto(), HttpStatus.OK);
        } else {
            Model response = new ExtendedModelMap();
            response.addAttribute("msg", "fetchType required as request param");
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getDealer(@PathVariable Long id) {
        DcDealerDto dealer = dealerService.findOneDto(id);
        if (dealer == null) {
            Model response = new ExtendedModelMap();
            response.addAttribute("friendlyError", new FriendlyError("Dealer not found", "warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(dealer, HttpStatus.OK);
    }

    @GetMapping("/filter/{term}")
    public ResponseEntity<?> filterDealer(
            @RequestParam(name = "page", defaultValue = "0") Integer page,
            @RequestParam(name = "elementsByPage", defaultValue = "10") Integer elementsByPage,
            @PathVariable String term) {
        return new ResponseEntity<>(dealerService.findAllByTermDto(term, PageRequest.of(page, elementsByPage)), HttpStatus.OK);
    }

    @GetMapping("/number/{dealerNumber}")
    public ResponseEntity<?> findByDealerNumber(@PathVariable String dealerNumber) {
        return new ResponseEntity<>(dealerService.findOneByDealerNumberDto(dealerNumber), HttpStatus.OK);
    }

    @GetMapping("/name/{dealerName}")
    public ResponseEntity<?> findByDealerName(@PathVariable String dealerName) {
        return new ResponseEntity<>(dealerService.findOneByNameDto(dealerName), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<?> addDealer(@RequestBody @Valid DcDealerDto dealer, BindingResult result) {
        Model response = new ExtendedModelMap();
        if (result.hasErrors()) {
            response.addAllAttributes(Helpers.getAllErrorsOfRequest(result));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        try {
            DcDealerDto newDealer = dealerService.saveDto(dealer);
            response.addAttribute("dealer", newDealer);
            response.addAttribute("msg", "Dealer Added Successfully");
        } catch (Exception e) {
            response.addAttribute("msg", e.getMessage());
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @PutMapping("/update/{id}")
    public ResponseEntity<?> updateDealer(@PathVariable Long id, @RequestBody @Valid DcDealerDto dealer, BindingResult result) {
        Model response = new ExtendedModelMap();
        if (result.hasErrors()) {
            response.addAllAttributes(Helpers.getAllErrorsOfRequest(result));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        try {
            DcDealerDto editedDealer = dealerService.updateDto(dealer, id);
            if (editedDealer == null) {
                response.addAttribute("friendlyError", new FriendlyError("Dealer not found", "warn"));
                return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
            }
            response.addAttribute("dealer", editedDealer);
            response.addAttribute("msg", "Dealer Updated Successfully");
        } catch (Exception e) {
            response.addAttribute("msg", e.getMessage());
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @PutMapping("/update-status/{id}")
    public ResponseEntity<?> updateDealerStatus(@PathVariable Long id, @RequestBody Map<String, Object> request) {
        Model response = new ExtendedModelMap();
        Boolean status = (Boolean) request.get("status");
        DcDealerDto dealer = dealerService.changeStatus(status, id);
        if (dealer == null) {
            response.addAttribute("friendlyError", new FriendlyError("Dealer not found", "warn"));
            return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
        }
        response.addAttribute("dealer", dealer);
        response.addAttribute("msg", "Dealer Status Updated Successfully");
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}
