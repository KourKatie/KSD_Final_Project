package com.test.util;

/**
 * Created by Katie on 8/22/2017.
 */
public class matches {


    private String FirstName;
    private String Company;
    private String message;
    private String departure;
    private String arrival;
    private String date;
    private String gender;

    public matches(String firstName, String company, String message, String departure, String arrival, String date, String gender) {
        FirstName = firstName;
        Company = company;
        this.message = message;
        this.departure = departure;
        this.arrival = arrival;
        this.date = date;
        this.gender = gender;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String company) {
        Company = company;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public String getArrival() {
        return arrival;
    }

    public void setArrival(String arrival) {
        this.arrival = arrival;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}