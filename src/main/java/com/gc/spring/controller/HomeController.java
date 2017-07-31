package com.gc.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Steve on 7/21/2017.
 */

@Controller
public class HomeController {

    @RequestMapping("/")

    public ModelAndView helloWorld() {
        return new
                ModelAndView("welcome", "message", "Hello World");
                //viewName = filename, modelObject = display message, modelName = variable place holder
    }

    @RequestMapping("/register")
    //the string method returns the jsp page that we want to show
    public String htmlForm(){
        return "register";
    }

    @RequestMapping("/adduser")
    //Model is a parameter that allows us to add stuff to our jsp
    //@RequestParam allows us to take in data from the form -- we must assign a type and a variable name with it
    public String welcomeUser(Model model, @RequestParam("firstName")String fname, @RequestParam("lastName")String lname,
                              @RequestParam("address")String address, @RequestParam("city")String city, @RequestParam("state")String state,
                              @RequestParam("zip")String zip, @RequestParam("email")String email, @RequestParam("password")String password,
                              @RequestParam("favoriteCoffee")String favoriteCoffee){

        //add values to the jsp using the model and add Attribute method
        model.addAttribute("firstName", fname);
        model.addAttribute("lastName", lname);
        model.addAttribute("favoriteCoffee",favoriteCoffee);
        model.addAttribute("address", address);
        model.addAttribute("city", city);
        model.addAttribute("state", state);
        model.addAttribute("zip", zip);
        model.addAttribute("email", email);
        model.addAttribute("password", password);

        return "adduser";
    }

}

