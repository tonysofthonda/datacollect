package com.honda.hdm.datacollect.security.configuration;

import com.honda.hdm.datacollect.security.enums.LoginType;
import com.honda.hdm.datacollect.security.model.LdapUserDetails;
import com.honda.hdm.datacollect.security.model.OAuth2AuthenticationUser;
import com.honda.hdm.datacollect.security.model.SamlUserDetails;
import com.honda.hdm.datacollect.security.model.UserDetailsDTO;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.DefaultAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.JwtTokenStore;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@Configuration
@EnableResourceServer
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {

    @Value("${config.security.oauth.jwt.key:HDM_HONDA_KEY_DECIPHER_TOKENS_2021}")
    private String jwtKey;

    @Value("${config.security.oauth.jwt.enabled:true}")
    private boolean security;

    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        resources.tokenStore(tokenStore());
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        if(security) {
            http.authorizeRequests()
                    .antMatchers("/v2/api-docs", "/configuration/ui", "/swagger-resources/**",
                            "/configuration/security", "/swagger-ui.html", "/webjars/**").permitAll()
                    .anyRequest().authenticated();
        }else {
            http.authorizeRequests().anyRequest().permitAll();
        }
        http.cors().configurationSource(corsConfigurationSource());
    }

    @Bean
    public JwtTokenStore tokenStore() {
        return new JwtTokenStore(accessTokenConverter());
    }

    @Bean
    public JwtAccessTokenConverter accessTokenConverter() {
        JwtAccessTokenConverter tokenConverter = new JwtAccessTokenConverter();
        tokenConverter.setSigningKey(jwtKey);
        tokenConverter.setAccessTokenConverter(getAuthenticationAccessTokenConverter());
        return tokenConverter;
    }

    private DefaultAccessTokenConverter getAuthenticationAccessTokenConverter() {
        return new DefaultAccessTokenConverter() {
            @Override
            public OAuth2Authentication extractAuthentication(Map<String, ?> map) {
                OAuth2Authentication authentication = (OAuth2Authentication) super.extractAuthentication(map);

                OAuth2AuthenticationUser authenticationUser =
                        new OAuth2AuthenticationUser(authentication.getOAuth2Request(), authentication.getUserAuthentication());

                UserDetailsDTO myUser = new UserDetailsDTO();
                if(map.get("loginBy").toString().equals(LoginType.LDAP_HDM.toString())){
                    myUser = buildLdapUser(map);
                }else if(map.get("loginBy").toString().equals(LoginType.SAML_IN.toString())){
                    myUser = buildSamlUser(map);
                }

                authenticationUser.setUserDetailsDTO(myUser);
                return authenticationUser;
            }
        };
    }

    private LdapUserDetails buildLdapUser(Map<String, ?> map){
        String firstName = map.get("firstName") != null ? map.get("firstName").toString() : null;
        String lastName = map.get("lastName") != null ? map.get("lastName").toString() : null;
        String fullName = map.get("fullName") != null ? map.get("fullName").toString() : null;
        List<String> memberOf = map.get("memberOf") != null ? (List<String>) map.get("memberOf") : Collections.emptyList();
        String email = map.get("email") != null ? map.get("email").toString() : null;
        String userName = map.get("userName") != null ? map.get("userName").toString() : null;
        String jobTitle = map.get("jobTitle") != null ? map.get("jobTitle").toString() : null;
        String company = map.get("company") != null ? map.get("company").toString() : null;
        String department = map.get("department") != null ? map.get("department").toString() : null;
        String manager = map.get("manager") != null ? map.get("manager").toString() : null;
        return new LdapUserDetails(firstName, lastName, fullName, memberOf, email, userName, jobTitle, company, department, manager);
    }

    private SamlUserDetails buildSamlUser(Map<String, ? > map){
        String dealerNumber = map.get("dealerNumber") != null ? map.get("dealerNumber").toString() : null;
        String userId = map.get("userId") != null ? map.get("userId").toString() : null;
        String fullName = map.get("fullName") != null ? map.get("fullName").toString() : null;
        String email = map.get("email") != null ? map.get("email").toString() : null;
        List<SimpleGrantedAuthority> roles = map.get("roles") != null ? (List<SimpleGrantedAuthority>) map.get("roles") : Collections.emptyList();
        return new SamlUserDetails(dealerNumber, userId, fullName, email, roles);
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration corsConfig = new CorsConfiguration();
        corsConfig.setAllowedOriginPatterns(Arrays.asList("*"));
        corsConfig.setAllowedMethods(Arrays.asList("POST","GET","PUT","PATCH","DELETE","OPTIONS"));
        corsConfig.setAllowCredentials(true);
        corsConfig.setAllowedHeaders(Arrays.asList("*"));
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", corsConfig);
        return source;
    }

    @Bean
    public CorsFilter corsFilter() {
        return new CorsFilter(corsConfigurationSource());
    }
}
