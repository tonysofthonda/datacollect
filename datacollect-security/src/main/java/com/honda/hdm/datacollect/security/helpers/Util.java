package com.honda.hdm.datacollect.security.helpers;

import com.honda.hdm.datacollect.security.model.OAuth2AuthenticationUser;
import com.honda.hdm.datacollect.security.model.UserDetailsDTO;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.OAuth2Authentication;

public class Util {

    public static UserDetailsDTO getUser() {
        return ((OAuth2AuthenticationUser) SecurityContextHolder.getContext().getAuthentication()).getUserDetailsDTO();
    }
}
