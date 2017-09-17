package com.Services;

import com.Dao.TopicDao;
import com.entities.Topic;
import com.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by dash on 7/17/2017.
 */
@Service
public class Topicservice implements Topicserviceinterface {

    @Autowired
    private TopicDao topicDao;

    @Override
    public Integer topicsave(Topic topic, HttpServletRequest request) {
        User user = (User)request.getSession().getAttribute("Userdetails");
        Integer response = topicDao.topicsave(topic, user.getUserName());
        return response;

    }
}
