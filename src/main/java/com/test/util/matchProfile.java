package com.test.util;

/**
 * Created by Katie on 8/28/2017.
 */
public class matchProfile {



    private String profilePicture;
    private String FirstName;
    private String LastName;
    private String Company;
    private String gender;


    public matchProfile(String profilePicture, String FirstName, String LastName, String Company, String gender) {
        this.profilePicture = profilePicture;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Company = Company;
        this.gender = gender;

    } public String getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(String profilePicture) {
        this.profilePicture = profilePicture;
    }
    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        LastName = LastName;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String Company) {
        Company = Company;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

}