package com.test.util;

/**
 * Created by Katie on 8/22/2017.
 */
public class matches {

    private String gender;
    private String Company;
    private String frequency;
    private String message;

    public matches(String firstName, String gender, String company, String frequency, String message) {
        FirstName = firstName;
        this.gender = gender;
        Company = company;
        this.frequency = frequency;
        this.message = message;
    }
    private String FirstName;

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String company) {
        Company = company;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
