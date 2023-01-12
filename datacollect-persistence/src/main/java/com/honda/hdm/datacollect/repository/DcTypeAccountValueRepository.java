package com.honda.hdm.datacollect.repository;

import com.honda.hdm.datacollect.model.entity.DcAccountRelationship;
import com.honda.hdm.datacollect.model.entity.DcTypeAccountValue;
import com.honda.hdm.datacollect.model.entity.DcTypeAccountValueRelationship;
import com.honda.hdm.datacollect.repository.base.IBaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DcTypeAccountValueRepository extends IBaseRepository<DcTypeAccountValue, Long> {


    public List<DcTypeAccountValue> findByName(String name);

    @Query("select typeAccountValue from DcTypeAccountValue typeAccountValue\n" +
            "left join typeAccountValue.typeAccountParent parent\n" +
            "where parent.typeAccountChild is null")
    public List<DcTypeAccountValue> findMainTypesAccountsValues();

    @Query("select rel from DcTypeAccountValueRelationship rel\n" +
            "where rel.typeAccountParent.id = :id order by rel.order asc")
    public List<DcTypeAccountValueRelationship> findChildren(@Param("id") Long id);

    @Query("select rel from DcTypeAccountValueRelationship rel\n" +
            "where rel.typeAccountChild.id = :id")
    public DcTypeAccountValueRelationship findParent(@Param("id") Long id);
}
