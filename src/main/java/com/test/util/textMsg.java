package com.test.util;

/**
 * Created by Katie on 8/28/2017.
 */
public class textMsg {

    private String phoneNumber;
    private String FirstName;
    private String LastName;

    public textMsg(String phoneNumber, String firstName, String lastName) {
        this.phoneNumber = phoneNumber;
        FirstName = firstName;
        LastName = lastName;
    }


    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
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

}
