package com.yourdomain.controllers;

public class StudentEntity {
    private String childName;
    private String childAge;
    private String parentName;
    private String phoneNumber;
    private String email;
    private String admissionDate;
    private String comments;

    // Getters and Setters
    public String getChildName() { return childName; }
    public void setChildName(String childName) { this.childName = childName; }
    
    public String getChildAge() { return childAge; }
    public void setChildAge(String childAge) { this.childAge = childAge; }
    
    public String getParentName() { return parentName; }
    public void setParentName(String parentName) { this.parentName = parentName; }
    
    public String getPhoneNumber() { return phoneNumber; }
    public void setPhoneNumber(String phoneNumber) { this.phoneNumber = phoneNumber; }
    
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    
    public String getAdmissionDate() { return admissionDate; }
    public void setAdmissionDate(String admissionDate) { this.admissionDate = admissionDate; }
    
    public String getComments() { return comments; }
    public void setComments(String comments) { this.comments = comments; }
    
    public StudentEntity() {}
    
    public StudentEntity(String childName, String childAge, String parentName, String phoneNumber, String email, String admissionDate, String comments) {
        this.childName = childName;
        this.childAge = childAge;
        this.parentName = parentName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.admissionDate = admissionDate;
        this.comments = comments;
    }
}
