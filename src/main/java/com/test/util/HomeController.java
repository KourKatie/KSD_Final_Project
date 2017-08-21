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
    public ModelAndView helloWorld() {
        return new
                ModelAndView("welcome", "message",
                "Please choose from the below options.");
    }

    // Form page
    @RequestMapping("/userform")
    public ModelAndView userform() {
        return new
                ModelAndView("form", "inst", "Please enter info: ");
    }

    @RequestMapping("/signin")
    public ModelAndView signin() {
        return new
                ModelAndView("signin", "signin", "Your inputs: ");
    }

    @RequestMapping("/signinresponse")
    public ModelAndView signinresponse(@RequestParam("username") String username,
                                       @RequestParam("password") String password) {
        ModelAndView mv = new ModelAndView("signinresponse");
        mv.addObject("username", username);
        mv.addObject("password", password);
        return mv;
    }

    @RequestMapping("/selectlocation")
    public ModelAndView inventory() {
        return new
                ModelAndView("/WEB-INF/views/selectlocation.jsp", "inventory", "Coffee Selection");
    }



    @RequestMapping(value = "/addCustomer")
    public ModelAndView addCustomer (
            @RequestParam("UserId") String UserId,
            @RequestParam("FirstName") String FirstName,
            @RequestParam("LastName") String LastName,
            @RequestParam("email") String email,
            @RequestParam("phoneNumber") int phoneNumber,
            @RequestParam("cellProvider") String cellProvider,
            @RequestParam("Company") String Company,
            @RequestParam("gender") String gender,
            @RequestParam("password") String password,
            @RequestParam("vehicleMPG") Integer vehicleMPG,
            @RequestParam("profilePic") String profilePic
    ) {

        //add the info to DB through DAO
        boolean result = DAO.addCustomer(UserId, FirstName, LastName, email, phoneNumber, cellProvider, Company, gender, password, vehicleMPG, profilePic);
        //best to check the result
        if (result == false) {
            //still have to write this view
            return new ModelAndView("error", "errmsg", "customer add failed");
        }

        ModelAndView mv = new ModelAndView("addResult");
        mv.addObject("UserId", UserId);
        mv.addObject("FirstName", FirstName);
        mv.addObject("LastName", LastName);
        mv.addObject("email", email);
        mv.addObject("phoneNumber", phoneNumber);
        mv.addObject("cellProvider", cellProvider);
        mv.addObject("Company", Company);
        mv.addObject("gender", gender);
        mv.addObject("password", password);
        mv.addObject("vehicleMPG", vehicleMPG);
        mv.addObject("profilePic", profilePic);
        return mv;
    }

    @RequestMapping(value = "getAllItems")
    public ModelAndView getAllItems() {

        ArrayList<items> itemsList = DAO.getItemsList();

        //TODO: make error.jsp
        if (itemsList == null) {
            return new ModelAndView("error", "errmsg", "Items list is null");
        }

        return new ModelAndView("getAllItems", "iList", itemsList);
    }

    @RequestMapping(value = "getCustomersList")
    public ModelAndView getCustomersList() {

        ArrayList<customers> customerList = DAO.getCustomersList();

        //TODO: make error.jsp
        if (customerList == null) {
            return new ModelAndView("error", "errmsg", "Customer list is null");
        }

        return new ModelAndView("getCustomersList","cdata",customerList);
    }


    @RequestMapping("/deleteCustomer")
    public String deleteCustomer (
            Model model,
            @RequestParam("userID") String userID) {
        //make it happen with the DB
        boolean result = DAO.deleteCustomer(userID);

        if (result == false) {
            model.addAttribute("errmsg", "Delete failed");
            return "error";
        }
        //adding info without a ModelAndView
        //get the model as a argument above
        //and add to it
        model.addAttribute("userID", userID);
        return "deleted";
    }

}

