package com.Services;

import com.Dao.OTPDao;
import com.Dao.UserDao;
import com.entities.OTPMapping;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

@Service
public class EmailServiceImpl implements EmailService {

    final static String from = "aditya29best@gmail.com ";
    final static String password = "password";
    final static String sub = "OTP for Password Recovery";
    @Autowired
    private UserDao userDao;
    private User user;
    private OTPMapping otpMapping = new OTPMapping();
    private Random rand;
    @Autowired
    private OTPDao otpDao;
    //final static String msg = "";

    public static void send(String to, String msg) {
        //Get properties object
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        //get Session
        Session session = Session.getDefaultInstance(props,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(from, password);
                    }
                });
        //compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(sub);
            message.setText(msg);
            //send message
            Transport.send(message);
            System.out.println("message sent successfully");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }

    public boolean sendOTPToUser(String email) {
        user = userDao.findByEmail(email);
        if (user != null) {
            rand = new Random();
            int n = rand.nextInt(89999) + 10001;
            send(user.getEmail(), "Your One Time Password is " + n);
            otpMapping.setEmail(email);
            otpMapping.setOtp(n);
            otpDao.otpsave(otpMapping);
            return true;
        } else {
            return false;
        }
    }
}
