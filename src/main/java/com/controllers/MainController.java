package com.controllers;

import com.Dao.TopicDao;
import com.Dao.UserDao;
import com.Services.Loginservice;
import com.Services.RegisterService;
import com.entities.Topic;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class MainController {

    @Autowired
    TopicDao topicDao;
    @Autowired
    private RegisterService registerService;
    @Autowired
    private UserDao userDao;
    private User user;
    private ModelAndView modelAndView;
    @Autowired
    private Loginservice loginservice;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getHomePage() {
        ModelAndView view = new ModelAndView("index");
        return view;
    }

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public ModelAndView fail() {
        return new ModelAndView("errorPage");
    }


    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public @ResponseBody
    ModelAndView getSaved(@RequestParam("file") MultipartFile fileUpload, @ModelAttribute User user, BindingResult bindingResult,
                          HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();

        if (fileUpload != null) {
            if (fileUpload.getSize() > 0) {
                user.setPhoto(fileUpload.getBytes());
            } else {
                Path path = Paths.get("C:\\Users\\dash\\IdeaProjects\\Link Sharing\\src\\main\\webapp\\images\\imgplaceholder.png");
                user.setPhoto(Files.readAllBytes(path));
            }
        }

        ModelAndView model = new ModelAndView();
        registerService.save(user);
        session.setAttribute("Userdetails", user);
        model.setViewName("Dashboard");
        return model;
    }


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public @ResponseBody
    ModelAndView getlogin(@RequestParam("userName") String name, @RequestParam("password") String password, HttpServletRequest request) throws Exception {
        user = loginservice.getUserByUsernameAndPassword(name, password);
        HttpSession session = request.getSession();
        if (user != null) {
            if (name.equals(user.getUserName())) {
                session.setAttribute("Userdetails", user);
                modelAndView = new ModelAndView();
                modelAndView.setViewName("Dashboard");

            }
        } else {
            modelAndView = new ModelAndView();
            modelAndView.setViewName("index");
            modelAndView.addObject("message","Wrong Details Enter");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/getPhoto")
    public void getPhoto(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        user = (User) session.getAttribute("Userdetails");
        System.out.println("in get photo user is " + user);
        byte[] arr = user.getPhoto();
        response.getOutputStream().write(arr);
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "index";

    }

    @RequestMapping(value = "/validate", method = RequestMethod.GET)
    @ResponseBody
    String validate(@RequestParam("userName") String userName) throws Exception {
        User user = userDao.findUserByUserName(userName);
        if (user == null) {
            return "true";
        } else {
            return "false";
        }
    }


    @RequestMapping(value = "/validatemail", method = RequestMethod.GET)
    @ResponseBody
    String validatemail(@RequestParam("email") String email) throws Exception {
        User user = userDao.findByEmail(email);
        if (user == null) {
            return "true";
        } else {
            return "false";
        }
    }


    @RequestMapping(value = "/validatetopic", method = RequestMethod.GET)
    @ResponseBody
    String validatetopic(@RequestParam("name") String name) throws Exception {
        Topic topic = topicDao.findByTopicName(name);
        if (topic == null) {
            return "true";
        } else {
            return "false";
        }
    }

    @RequestMapping(value = "/Header1", method = RequestMethod.GET)
    public ModelAndView HeaderTest() {
        ModelAndView view = new ModelAndView("Header1");
        return view;
    }


    @RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
    public ModelAndView Forgetpassword() {
        ModelAndView view = new ModelAndView("Forgetpassword");
        return view;
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView admin() {
        ModelAndView view = new ModelAndView("admin");
        return view;
    }

    @RequestMapping(value = "/editing", method = RequestMethod.GET)
    public ModelAndView Editing() {
        return new ModelAndView("Editingprofile");
    }


    @RequestMapping(value = "/updateprofile", method = RequestMethod.POST)
    @ResponseBody
    ModelAndView updateprofile(@RequestParam String firstName, @RequestParam String lastName, @RequestParam String userName, @RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("Userdetails");

        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setUserName(userName);
        if (file != null && file.getSize() > 0) {
            user.setPhoto(file.getBytes());
        }
        ModelAndView model = new ModelAndView();
        if (registerService.profileupdate(user)) {
            session.setAttribute("Userdetails", user);
            model.setViewName("Dashboard");
        }
        return model;

    }

    @RequestMapping(value = "/updatepassword", method = RequestMethod.POST)
    @ResponseBody
    ModelAndView updatepassword(@RequestParam String password, HttpServletRequest request) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("Userdetails");
        user.setPassword(password);
        ModelAndView model = new ModelAndView();
        if (registerService.profileupdate(user)) {
            session.setAttribute("Userdetails", user);
            model.setViewName("index");
        }
        return model;

    }
}
