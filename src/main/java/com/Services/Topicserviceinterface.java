package com.Services;

import com.entities.Topic;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by dash on 7/17/2017.
 */
public interface Topicserviceinterface {

    Integer topicsave(Topic topic, HttpServletRequest request);
}
