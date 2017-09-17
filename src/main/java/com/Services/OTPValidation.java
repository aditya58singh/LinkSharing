package com.Services;

import com.entities.OTPMapping;

public interface OTPValidation {
    OTPMapping findOTPByEmail(String email);
}
