package com.test.util;

/**
 * Created by Katie on 8/28/2017.
 */
public class allRequests {

    private String FirstName;
    private String Company;
    private String message;
    private String departure;
    private String arrival;
    private String date;
    private String time;
    private String gender;
    private String phoneNumber;

    public allRequests(String firstName, String company, String message, String departure, String arrival, String date, String time, String gender, String phoneNumber) {
        FirstName = firstName;
        Company = company;
        this.message = message;
        this.departure = departure;
        this.arrival = arrival;
        this.date = date;
        this.time = time;
        this.gender = gender;
        this.phoneNumber = phoneNumber;
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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
