package com.Dao;

import com.entities.Topic;

/**
 * Created by dash on 7/17/2017.
 */
public interface TopicDao {
    Integer topicsave(Topic topic, String userName);
    Topic findByTopicName(String name) throws Exception;





}



