package com.honda.hdm.datacollect.service.converter;

import com.honda.hdm.datacollect.model.entity.*;
import com.honda.hdm.datacollect.model.entity.base.RecordStatusableEntry;
import com.honda.hdm.datacollect.model.entity.dto.*;
import org.modelmapper.ModelMapper;
import org.modelmapper.builder.ConfigurableConditionExpression;

import java.util.ArrayList;
import java.util.Collections;

public class CustomModelMapper extends ModelMapper {

    public CustomModelMapper(){
        contactConversion();
        terchiefConversion();
        dealerGroupConversion();
        facilityConversion();
        operationCodeConversion();
    }

    private void contactConversion(){
        this.createTypeMap(DcContact.class, DcContactDto.class)
                .addMappings(mapper->{
                    mapper.map(src->{
                        Long id = null;
                        if(src.getDcTerchiefList() != null && !src.getDcTerchiefList().isEmpty()){
                            id = src.getDcTerchiefList().get(0).getId();
                        }
                        return id;
                    },DcContactDto::setTerchiefId);
                });

        this.createTypeMap(DcContactDto.class, DcContact.class)
                .addMappings(mapper->{
                    mapper.map(src-> {
                                DcTerchief terchief = new DcTerchief();
                                terchief.setId(src.getId());
                                return Collections.singletonList(terchief);
                            }
                    ,DcContact::setDcTerchiefList);
                    mapper.map(src->null,DcContact::setDcRecordStatusId);
                    mapper.map(src->new ArrayList<>(),DcContact::setDcDealerList);
                    mapper.map(src->null,DcContact::setCreateTimestamp);
                    mapper.map(src->null,DcContact::setUpdateTimestamp);
                });
    }

    private void terchiefConversion(){
        this.createTypeMap(DcTerchief.class, DcTerchiefDto.class)
                .addMappings(mapper->{
                    mapper.map(DcTerchief::getMotherLast,DcTerchiefDto::setMotherLastName);
                });

        this.createTypeMap(DcTerchiefDto.class, DcTerchief.class)
                .addMappings(mapper->{
                    mapper.map(src->null,DcTerchief::setCreateTimestamp);
                    mapper.map(src->null,DcTerchief::setUpdateTimestamp);
                    mapper.map(src->null,DcTerchief::setDcRecordStatusId);
                    mapper.map(src->null,DcTerchief::setDmsName);
                    mapper.map(src->null,DcTerchief::setDcDealerList1);
                    mapper.map(src->null,DcTerchief::setDcContactList);
                });
    }

    private void dealerGroupConversion(){
        this.createTypeMap(DcDealerGroup.class, DcDealerGroupDto.class)
                .addMappings(mapper->{
                    mapper.map((dealerGroup)->dealerGroup.getDcDealerList() != null ? dealerGroup.getDcDealerList(): new ArrayList<>(),DcDealerGroupDto::setDealers);
                });
        this.createTypeMap(DcDealerGroupDto.class, DcDealerGroup.class);
    }

    private void facilityConversion(){
        this.createTypeMap(DcFacility.class, DcFacilityDto.class);
        this.createTypeMap(DcFacilityDto.class, DcFacility.class)
                .addMappings(mapper->{
                    mapper.map(src->null,DcFacility::setCreateTimestamp);
                    mapper.map(src->null,DcFacility::setUpdateTimestamp);
                    mapper.map(src->null,DcFacility::setDcRecordStatusId);
                });
    }

    private void operationCodeConversion(){
        this.createTypeMap(DcOperationCode.class, DcOperationCodeDto.class);
        this.createTypeMap(DcOperationCodeDto.class, DcOperationCode.class)
                .addMappings(mapper->{
                    mapper.map(src->null,DcOperationCode::setCreateTimestamp);
                    mapper.map(src->null,DcOperationCode::setUpdateTimestamp);
                    mapper.map(src->null,DcOperationCode::setDcRecordStatusId);
                });;
    }
}
