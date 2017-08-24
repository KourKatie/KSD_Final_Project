package com.test.util;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import java.util.ArrayList;

@Controller
public class HomeController {

    // Welcome Page
    @RequestMapping("/")
    public ModelAndView welcome() {
        return new ModelAndView("welcome", "message",
                "Please choose from the below options.");
    }

    @RequestMapping("/profile")
    public ModelAndView profile(
            @RequestParam("UserId") String UserId,
            @RequestParam("FirstName") String FirstName,
            @RequestParam("LastName") String LastName,
            @RequestParam("email") String email,
            @RequestParam("phoneNumber") String phoneNumber,
            @RequestParam("cellProvider") String cellProvider,
            @RequestParam("Company") String Company,
            @RequestParam("gender") String gender,
            @RequestParam("vehicleMPG") Integer vehicleMPG
    ) {
        ModelAndView mv = new ModelAndView("/profile");
        mv.addObject("UserId", UserId);
        mv.addObject("FirstName", FirstName);
        mv.addObject("LastName", LastName);
        mv.addObject("email", email);
        mv.addObject("phoneNumber", phoneNumber);
        mv.addObject("cellProvider", cellProvider);
        mv.addObject("Company", Company);
        mv.addObject("gender", gender);
        mv.addObject("vehicleMPG", vehicleMPG);

        return mv;
    }

    @RequestMapping(value = "/addCustomer")
    public ModelAndView addCustomer(
            @RequestParam("FirstName") String FirstName,
            @RequestParam("LastName") String LastName,
            @RequestParam("email") String email,
            @RequestParam("phoneNumber") int phoneNumber,
            @RequestParam("cellProvider") String cellProvider,
            @RequestParam("Company") String Company,
            @RequestParam("gender") String gender,
            @RequestParam("password") String password,
            @RequestParam("vehicleMPG") Integer vehicleMPG

    ) {

        //add the info to DB through DAO
        boolean result = DAO.addCustomer(FirstName, LastName, email, phoneNumber, cellProvider, Company, gender, password, vehicleMPG);
        //best to check the result
        if (result == false) {
            //still have to write this view
            return new ModelAndView("error", "errmsg", "customer add failed");
        }

        ModelAndView mv = new ModelAndView("requestpage");
        mv.addObject("FirstName", FirstName);
        mv.addObject("LastName", LastName);
        mv.addObject("email", email);
        mv.addObject("phoneNumber", phoneNumber);
        mv.addObject("cellProvider", cellProvider);
        mv.addObject("Company", Company);
        mv.addObject("gender", gender);
        mv.addObject("password", password);
        mv.addObject("vehicleMPG", vehicleMPG);

        return mv;
    }

    @RequestMapping(value = "/requestpage")
    public ModelAndView requestpage(
            @RequestParam("email") String email,
            @RequestParam("password") String password
    ) {
        if (DAO.verifyLogin(email, password) == true) {
        return new ModelAndView("/requestpage", "requests", "View Request");
        }
        else {
            return new ModelAndView("error", "error", "Incorrect Login");
        }
    }

    @RequestMapping(value = "/addRequest")
    public ModelAndView addRequest(
            @RequestParam("UserID") String UserID,
            @RequestParam("departure") String departure,
            @RequestParam("arrival") String arrival,
            @RequestParam("time") String time,
            @RequestParam("date") String date,
            @RequestParam("frequency") String frequency,
            @RequestParam("message") String message
    ) {

        //add the info to DB through DAO
        boolean result = DAO.addrequest(UserID, departure, arrival, time, date, frequency, message);

        ArrayList<matches> matchList = DAO.getMatches(departure, arrival, date, time);

        if (result == false) {

            return new ModelAndView("zeroMatches","sorrymsg","Sorry! No matches were found");
        }

        ModelAndView mv = new ModelAndView("matches", "mdata", matchList);
        mv.addObject("UserID", UserID);
        mv.addObject("departure", departure);
        mv.addObject("arrival", arrival);
        mv.addObject("time", time);
        mv.addObject("date", date);
        mv.addObject("frequency", frequency);
        mv.addObject("message", message);

        return mv;
    }

    @RequestMapping(value = "/messageconfirmation")
    public ModelAndView SmsSender() {
        // Find your Account Sid and Token at twilio.com/user/account
        String ACCOUNT_SID = "ACb4d31977635fe38ee7abb69a3bbf2571";
        String AUTH_TOKEN = "cbc80535205267ebdc2c321a8c617967";

            Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

            Message message = Message.creator(new PhoneNumber("+15865225021"),
                    new PhoneNumber("+18305005414"),
                    "This is the ship that made the Kessel Run in fourteen parsecs?").create();

            System.out.println(message.getSid());

            return new ModelAndView ("messageconfirmation", "message", "Message send successfully");
        }


        public static class Test {
            public static void main(String[] args) throws IOException {
                URL url = new URL("https://api.twilio.com/2010-04-01/Accounts/AC123456abc/Messages");
                HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
                httpCon.setDoOutput(true);
                httpCon.setRequestMethod("POST");
                OutputStreamWriter out = new OutputStreamWriter(
                        httpCon.getOutputStream());
                System.out.println(httpCon.getResponseCode());
                System.out.println(httpCon.getResponseMessage());
                out.close();
            }
        }
    }






