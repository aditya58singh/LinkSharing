package com.Dao;

import com.entities.OTPMapping;

public interface OTPDao {

    boolean otpsave(OTPMapping otp);
    OTPMapping findByEmail(String email);
}
