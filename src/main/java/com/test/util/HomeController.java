package com.test.util;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class HomeController {

    // Welcome Page
    @RequestMapping("/")
    public ModelAndView welcome() {
        return new
                ModelAndView("welcome", "message",
                "Please choose from the below options.");
    }

    @RequestMapping("/profile")
    public ModelAndView profile() {
        return new ModelAndView("profile", "userProfile", "here's your profile");
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
    public ModelAndView requestpage() {
        return new ModelAndView("/requestpage", "requests", "View Request");
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
        //best to check the result
        if (result == false) {
            //still have to write this view
            return new ModelAndView("error", "errmsg", "customer add failed");
        }

        ArrayList<matches> matchList = DAO.getMatches();

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

}




