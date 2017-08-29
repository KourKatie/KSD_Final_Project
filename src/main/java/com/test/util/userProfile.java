package com.test.util;

/**
 * Created by Katie on 8/28/2017.
 */
public class userProfile {

    private String profilePicture;
    private String FirstName;
    private String LastName;
    private String email;
    private String phoneNumber;
    private String Company;
    private String gender;

    public userProfile(String profilePicture, String firstName, String lastName, String email, String phoneNumber, String company, String gender) {
        this.profilePicture = profilePicture;
        FirstName = firstName;
        LastName = lastName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        Company = company;
        this.gender = gender;
    }

    public String getProfilePicture() {
        return profilePicture;

    }

    public void setProfilePicture(String profilePicture) {
        this.profilePicture = profilePicture;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String lastName) {
        LastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String company) {
        Company = company;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    }

