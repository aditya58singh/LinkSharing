package com.Services;

import com.Dao.UserDao;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by dash on 7/13/2017.
 */
@Service
public class LoginserviceImpl implements Loginservice {

    @Autowired
    private UserDao userDao;

    @Override
    public User getUserByUsernameAndPassword(String userName, String password) throws Exception {

        return userDao.findUserByNameAndPassword(userName, password);
    }
}
