package com.test.util;

public class customers {

    private String userID;
    private String fname;
    private String lname;
    private String username;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public customers(String userID, String fname, String lname, String username) {
        this.userID = userID;
        this.fname = fname;
        this.lname = lname;
        this.username = username;
    }

    public customers() {
        userID = "";
        fname = "";
        lname = "";
        username = "";

    }
}
