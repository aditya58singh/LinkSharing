package com.Services;

import com.Dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdationServiceImpl implements UpdationService {

    @Autowired
    UserDao userDao;

    @Override
    public boolean updatePassword(String email, String password) { return userDao.updatePassword(email,password); }
}
