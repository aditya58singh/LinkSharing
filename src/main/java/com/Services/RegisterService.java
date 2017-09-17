package com.Services;

import com.entities.User;

/**
 * Created by ankur on 12/7/17.
 */
public interface RegisterService {
    boolean save(User user);
    boolean profileupdate(User user);
    boolean passwordupdate(User user);

}
