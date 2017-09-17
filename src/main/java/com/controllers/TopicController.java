package com.controllers;

import com.Services.Topicservice;
import com.entities.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by dash on 7/17/2017.
 */
@Controller
public class TopicController {

    @Autowired
    private Topicservice topicservice;

    @RequestMapping(value = "/addTopic", method = RequestMethod.POST)
    @ResponseBody
    String topicadded(@ModelAttribute Topic topic, HttpServletRequest request) {
        Integer response = topicservice.topicsave(topic, request);
        return response+"";

    }
}
