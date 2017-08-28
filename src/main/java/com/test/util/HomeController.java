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
import java.util.List;

import static com.test.util.DAOCredentials.ACCOUNT_SID;
import static com.test.util.DAOCredentials.AUTH_TOKEN;

@Controller
public class HomeController {

    // Welcome Page
    @RequestMapping("/")
    public ModelAndView welcome() {

        return new ModelAndView("welcome", "message",
                "Please choose from the below options.");
    }

    @RequestMapping("/verifylogin")
      public ModelAndView verifylogin(
              @RequestParam("email") String email,
              @RequestParam("password") String password
    ) {

        int UserId = DAO.verifyLogin(email, password);

        if (UserId == 0) {
            return new ModelAndView("error", "errormsg", "login incorrect");
        }

        ModelAndView mv = new ModelAndView("requestpage");
        mv.addObject("UserId", UserId);

        return mv;
    }

    @RequestMapping("/getUserProfile")
    public ModelAndView getUserProfile(
            @RequestParam("UserId") int UserId
    ) {

        ArrayList<userProfile> userList = DAO.getUserProfile(UserId);

        return new ModelAndView ("/profile", "ppdata", userList);

    }

    @RequestMapping(value = "/addCustomer")
    public ModelAndView addCustomer(
            @RequestParam("FirstName") String FirstName,
            @RequestParam("LastName") String LastName,
            @RequestParam("email") String email,
            @RequestParam("phoneNumber") String phoneNumber,
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

        ModelAndView mv = new ModelAndView("login");
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
    public ModelAndView requestpage() {
        return new ModelAndView("/requestpage", "requests", "View Request");
    }

    @RequestMapping(value = "/addRequest")
    public ModelAndView addRequest(
            @RequestParam("UserId") int UserId,
            @RequestParam("departure") String departure,
            @RequestParam("arrival") String arrival,
            @RequestParam("time") String time,
            @RequestParam("date") String date,
            @RequestParam("frequency") String frequency,
            @RequestParam("message") String message

    ) {

        //add the info to DB through DAO
        boolean result = DAO.addrequest(UserId, departure, arrival, time, date, frequency, message);

        ArrayList<matches> matchList = DAO.getMatches(departure, arrival, date, time);

        if (result == false) {

            return new ModelAndView("zeroMatches","sorrymsg","Sorry! No matches were found");
        }

        ModelAndView mv = new ModelAndView("matches", "mdata", matchList);
        mv.addObject("UserId", UserId);
        mv.addObject("departure", departure);
        mv.addObject("arrival", arrival);
        mv.addObject("time", time);
        mv.addObject("date", date);
        mv.addObject("frequency", frequency);
        mv.addObject("message", message);

        return mv;
    }

    @RequestMapping(value = "/getAllRequests")
    public ModelAndView getAllRequests (
            @RequestParam("UserId") int UserId
    ) {

        ArrayList<allRequests> allRequestList = DAO.getAllRequests();

        ModelAndView mv = new ModelAndView("allRequests", "ardata", allRequestList);
        mv.addObject("UserId", UserId);

        return mv;
    }

    @RequestMapping(value = "/messageconfirmation")
    public ModelAndView SmsSender(
            String phoneNumber,
            String UserId
    ) {

        List txtList = DAO.getUserInfo(UserId);

        String userPhoneNumber = String.valueOf(txtList.get(0));
        String userFirstName = String.valueOf(txtList.get(1));
        String userLastName = String.valueOf(txtList.get(2));

        if (userPhoneNumber != null) {

            Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

            Message message = Message.creator(new PhoneNumber("+" + phoneNumber),
                    new PhoneNumber("+18305005414"),
                    userFirstName + " " + userLastName + " has matched with you! You may contact them at " + userPhoneNumber).create();

            System.out.println(message.getSid());

            return new ModelAndView("messageconfirmation", "message", "Message send successfully");
        }

        return new ModelAndView("messageFailure", "message", "Failure to send message");
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

        @RequestMapping(value="/getMatchProfile")
         public ModelAndView getMatchProfile(
                 @RequestParam("phoneNumber") String phoneNumber
        ) {

           ArrayList<matchProfile> mProfileList = DAO.getMatchProfile(phoneNumber);

           return new ModelAndView("/matchProfile", "updata", mProfileList);
        }
    }






