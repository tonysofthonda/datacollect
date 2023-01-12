package com.honda.hdm.datacollect.security.model;

import java.util.List;

public class LdapUserDetails extends UserDetailsDTO {
    private String firstName;
    private String lastName;
    private String fullName;
    private List<String> memberOf;
    private String email;
    private String userName;
    private String jobTitle;
    private String company;
    private String department;
    private String manager;

    public LdapUserDetails(String firstName, String lastName, String fullName, List<String> memberOf, String email, String userName, String jobTitle, String company, String department, String manager) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.fullName = fullName;
        this.memberOf = memberOf;
        this.email = email;
        this.userName = userName;
        this.jobTitle = jobTitle;
        this.company = company;
        this.department = department;
        this.manager = manager;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public List<String> getMemberOf() {
        return memberOf;
    }

    public void setMemberOf(List<String> memberOf) {
        this.memberOf = memberOf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }
}
