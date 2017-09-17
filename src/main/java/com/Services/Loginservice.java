package com.Services;

import com.entities.User;

/**
 * Created by dash on 7/13/2017.
 */
public interface Loginservice
{
    User getUserByUsernameAndPassword(String userName, String password) throws Exception;
}
