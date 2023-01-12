package com.honda.hdm.datacollect.service.domain.impl;


import com.github.javafaker.Faker;
import com.honda.hdm.datacollect.model.entity.DcContact;
import com.honda.hdm.datacollect.model.entity.DcTerchief;
import com.honda.hdm.datacollect.model.entity.dto.DcContactDto;
import com.honda.hdm.datacollect.service.converter.CustomModelMapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Collections;

import static org.junit.jupiter.api.Assertions.*;

public class ConverterTest {

    @Autowired
    private Faker faker = new Faker();

    private CustomModelMapper modelMapper = new CustomModelMapper();

    @Test
    void when_convert_entity_to_dto(){
//        assertDoesNotThrow(
//                ()->modelMapper.validate());
    }
}
