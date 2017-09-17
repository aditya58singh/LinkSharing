package com.Services;

import com.Dao.UserDao;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    private UserDao userDao;

    @Override
    public boolean save(User user) {return userDao.save(user);}

    @Override
    public boolean profileupdate(User user) {
        return userDao.updateprofile(user);
    }

    @Override
    public boolean passwordupdate(User user) {
        return  userDao.updatepassword(user);
    }
}
