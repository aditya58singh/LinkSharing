package com.Services;

import com.Dao.OTPDao;
import com.entities.OTPMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OTPValidationImpl implements OTPValidation {

    @Autowired
    private OTPDao otpDao;

    @Override
    public OTPMapping findOTPByEmail(String email) { return otpDao.findByEmail(email); }
}
