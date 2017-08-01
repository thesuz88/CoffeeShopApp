package com.gc.spring.controller;

import com.gc.coffeedata.ItemsEntity;
import com.gc.coffeedata.UsersEntity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cache.ReadWriteCache;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
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

    @RequestMapping("/itemsadmin")
    public ModelAndView itemsAdmin() {

        ArrayList<ItemsEntity> itemList = displayItemList();

        return new ModelAndView("itemsadmin", "listItems", itemList);

    }

    private ArrayList<ItemsEntity> displayItemList() {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sf = cfg.buildSessionFactory();
        Session selectItems = sf.openSession();
        selectItems.beginTransaction();
        Criteria c = selectItems.createCriteria(ItemsEntity.class);

        return (ArrayList<ItemsEntity>) c.list();
    }


    @RequestMapping("/userprofile")
    //Model is a parameter that allows us to add stuff to our jsp
    //@RequestParam allows us to take in data from the form -- we must assign a type and a variable name with it
    public String addNewUser(Model model, @RequestParam("firstName") String fname, @RequestParam("lastName") String lname, @RequestParam("favoriteCoffee")String favCoffee,
                             @RequestParam("address") String address, @RequestParam("city") String city, @RequestParam("state") String state,
                             @RequestParam("zip") String zip, @RequestParam("email") String email, @RequestParam("password") String password) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

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

        model.addAttribute("firstName",fname);
        model.addAttribute("lastName", lname);
        model.addAttribute("favoriteCoffee", favCoffee);
        model.addAttribute("address", address);
        model.addAttribute("city", city);
        model.addAttribute("state",state);
        model.addAttribute("zip",zip);
        model.addAttribute("email",email);
        model.addAttribute("password", password);

        return "userprofile";
    }

    @RequestMapping("/getNewItem")
    public String newItem () {

        return "addnewitem";
    }

    @RequestMapping("/addItem")
    public String addNewItem(@RequestParam("itemName")String itemName, @RequestParam("itemDescription")String itemdescription,
                             @RequestParam("itemPrice")BigDecimal itemPrice, @RequestParam("itemQuantity")int itemQuantity){

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sf = cfg.buildSessionFactory();
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        ItemsEntity newItem = new ItemsEntity();

        newItem.setItemName(itemName);
        newItem.setDescription(itemdescription);
        newItem.setPrice(itemPrice);
        newItem.setQuantity(itemQuantity);

        s.save(newItem);
        tx.commit();
        s.close();

        return "addnewitem";
    }
    @RequestMapping("/delete")
    public ModelAndView deleteItem(@RequestParam("id") int id){

        //temp object will store info for the object we want to delete
        ItemsEntity temp = new ItemsEntity();
        temp.setItemsId(id);

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sessionFact = cfg.buildSessionFactory();
        Session s = sessionFact.openSession();
        s.beginTransaction();

        s.delete(temp); //delete the object from the list
        s.getTransaction().commit(); //delete the row from the database table

        ArrayList<ItemsEntity> itemList = displayItemList();

        return
                new ModelAndView("itemsadmin","listItems",itemList);
    }
    private int id;
    @RequestMapping("/updateItem")
    public String update(@RequestParam ("id")int id){
        this.id = id;

        return "updateitem";
    }



    @RequestMapping("/update")
    public ModelAndView updateItem(Model model, @RequestParam("itemName")String itemName,@RequestParam("itemDescription")String itemdescription,
                                   @RequestParam("itemPrice")BigDecimal itemPrice, @RequestParam("itemQuantity")int itemQuantity){

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sf = cfg.buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();

        ItemsEntity temp = (ItemsEntity) s.get(ItemsEntity.class,id);
        temp.setItemName(itemName);
        temp.setDescription(itemdescription);
        temp.setPrice(itemPrice);
        temp.setQuantity(itemQuantity);

        s.update(temp);
        s.getTransaction().commit();
        s.close();
        ArrayList<ItemsEntity> itemList = displayItemList();

        model.addAttribute("itemID",id);
        model.addAttribute("itemName", itemName);
        model.addAttribute("itemDescription", temp.getDescription());
        model.addAttribute("itemPrice",temp.getPrice());
        model.addAttribute("itemQuantity",temp.getQuantity());


        return new ModelAndView("itemsadmin","listItems",itemList);
    }
}

