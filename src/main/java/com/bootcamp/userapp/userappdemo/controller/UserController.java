package com.bootcamp.userapp.userappdemo.controller;

import com.bootcamp.userapp.userappdemo.model.User;
import com.bootcamp.userapp.userappdemo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController
{

    @Autowired
    private UserRepository userRepository;

    @RequestMapping(path="/",method = RequestMethod.GET)
        public String getAllUsers(ModelMap model) {
        model.put("users",userRepository.findAll());
        return "AllUsers";
    }

    @RequestMapping(path="/user/{id}",method = RequestMethod.GET)
    public String showUser(@PathVariable("id") Long id,ModelMap model){
        model.put("users",userRepository.findOne(id));
        return "AllUsers";
    }

    @RequestMapping(path="/edituser/{id}",method = RequestMethod.GET)
    public String editUser(@PathVariable("id") Long id,ModelMap model){
        model.put("user",userRepository.findOne(id));
        return "EditUser";
    }

    @RequestMapping(value="/deleteuser/{id}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") Long id){
        userRepository.delete(id);
        return "redirect:/";
    }

    @RequestMapping(path="/saveUser",method = RequestMethod.POST)
    public String saveUser(User user) {
        userRepository.save(user);
        return "AddUser";
    }

    @RequestMapping(path="/addUser",method = RequestMethod.GET)
    public String addUser(ModelMap modelMap) {
        modelMap.addAttribute("user",new User());
        return "AddUser";
    }

}
