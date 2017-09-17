package com.Dao;

import com.entities.User;

import java.sql.SQLException;

public interface UserDao {

	boolean save(User user);

	User findUserByNameAndPassword(String userName, String password) throws Exception;
	User findUserByUserName(String userName) throws Exception;
	User findByEmail(String email);
	boolean updatePassword(String email,String password);
	boolean updateprofile(User user);
	boolean updatepassword(User user);

}
