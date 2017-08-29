package com.test.util;

/**
 * Created by Katie on 8/29/2017.
 */
public class userHistory {

    private String date;
    private String departure;
    private String arrival;
    private String time;
    private String message;

    public userHistory(String date, String departure, String arrival, String time, String message) {
        this.date = date;
        this.departure = departure;
        this.arrival = arrival;
        this.time = time;
        this.message = message;

    }
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
