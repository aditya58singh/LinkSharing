package com.controllers;

import com.Services.EmailService;
import com.Services.OTPValidation;
import com.Services.UpdationService;
import com.Services.ValidationService;
import com.entities.OTPMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class ValidationController {

    @Autowired
    private EmailService emailService;

    @Autowired
    private OTPValidation otpValidation;

    @Autowired
    private UpdationService updationService;

    @Autowired
    private ValidationService validationService;

    private ModelAndView view;
    private OTPMapping otpMapping;

    @RequestMapping(value = "/sendOTP", method = RequestMethod.POST)
    public @ResponseBody
    ModelAndView sendOTP(@RequestParam("email_name") String email, HttpServletRequest request) {

        if (emailService.sendOTPToUser(email)) {
            view = new ModelAndView();
            view.setViewName("Forgetpassword");
        }
        return view;
    }

    @RequestMapping(value = "/forgotpasswordform", method = RequestMethod.POST)
    public @ResponseBody
    ModelAndView updatePassword(@RequestParam("email") String email, @RequestParam("otp") String otp, @RequestParam("password") String password, HttpServletRequest request) {

        System.out.println("inside update password");
        otpMapping = otpValidation.findOTPByEmail(email);
        int OTP = Integer.parseInt(otp);
        System.out.println("otp code " + otpMapping);
        if (OTP == otpMapping.getOtp()) {
            if (updationService.updatePassword(email, password)) {
                view = new ModelAndView();
                view.setViewName("index");
            }
        }
        return view;
    }


}
