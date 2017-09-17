package com.entities;

import javax.persistence.*;

@Entity
public class OTPMapping {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private Integer OTPId;

    @Column
    private int otp;

    @Column
    private String email;

    public Integer getOTPId() {
        return OTPId;
    }

    public void setOTPId(Integer OTPId) {
        this.OTPId = OTPId;
    }

    public int getOtp() {
        return otp;
    }

    public void setOtp(int otp) {
        this.otp = otp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
