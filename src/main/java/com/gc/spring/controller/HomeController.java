package com.gc.spring.controller;

import com.gc.coffeedata.ItemsEntity;
import com.gc.coffeedata.UsersEntity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;


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
    public String htmlForm() {
        return "register";
    }

    @RequestMapping("/itemadmin")
    public ModelAndView itemAdmin() {

        ArrayList<ItemsEntity> itemList = displayItemList();

        return new ModelAndView("itemadmin", "listItems", itemList);

    }

    private ArrayList<ItemsEntity> displayItemList() {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sf = cfg.buildSessionFactory();
        Session selectItems = sf.openSession();
        selectItems.beginTransaction();
        Criteria c = selectItems.createCriteria(ItemsEntity.class);

        return (ArrayList<ItemsEntity>) c.list();
    }


    @RequestMapping("/adduser")
    //Model is a parameter that allows us to add stuff to our jsp
    //@RequestParam allows us to take in data from the form -- we must assign a type and a variable name with it
    public String welcomeUser(Model model, @RequestParam("firstName") String fname, @RequestParam("lastName") String lname,
                              @RequestParam("address") String address, @RequestParam("city") String city, @RequestParam("state") String state,
                              @RequestParam("zip") String zip, @RequestParam("email") String email, @RequestParam("password") String password) {
        Configuration cfg = new Configuration().configure("hibernate.cfg,xml");

        SessionFactory sf = cfg.buildSessionFactory();

        Session s = sf.openSession();

        Transaction tx = s.beginTransaction();

        UsersEntity newUser = new UsersEntity();
        //add values to the jsp using the model and add Attribute method
        newUser.setFirstName(fname);
        newUser.setLastName(lname);
        newUser.setAddress(address);
        newUser.setCity(city);
        newUser.setState(state);
        newUser.setZip(zip);
        newUser.setEmail(email);
        newUser.setPassword(password);

        s.save(newUser);
        tx.commit();
        s.close();

        return "adduser";
    }

}

