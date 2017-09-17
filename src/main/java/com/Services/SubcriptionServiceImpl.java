package com.Services;

import com.Dao.SubcriptionDao;
import com.entities.Topic;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by dash on 7/20/2017.
 */
@Service
public class SubcriptionServiceImpl implements SubcriptionService {

    @Autowired
    SubcriptionDao subcriptionDao;

    @Override
    public boolean Subscribe(User user, Topic topic, String seriousness) {
        return subcriptionDao.Subscribe( user , topic, seriousness);
    }
}