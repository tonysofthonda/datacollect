package com.honda.hdm.datacollect.security.enums;

public enum LoginType {
    LDAP_HDM("LDAP - HDM"),
    SAML_IN("SAML - iN");

    private final String value;

    private LoginType(String value){
        this.value = value;
    }
}
