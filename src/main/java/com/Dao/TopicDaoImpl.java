package com.Dao;

import com.Services.SubcriptionService;
import com.entities.Topic;
import com.entities.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TopicDaoImpl implements TopicDao {

    @Autowired
    SubcriptionService subcriptionService;

    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    public Integer topicsave(Topic topic, String userName) {
        Session session = sessionFactory.openSession();
        String queryString = "from User where userName = :userName";
        Query query = session.createQuery(queryString);
        query.setParameter("userName",userName);
        User user=(User) query.uniqueResult();
        topic.setCreatedby(user);
        session.beginTransaction();
        Integer response = (Integer) session.save(topic);
        session.getTransaction().commit();
        session.close();
        subcriptionService.Subscribe(user,topic, "VerySerious");
        return response;
    }

    @Override
    public Topic findByTopicName(String name) {
        Query query = sessionFactory.openSession().createQuery("from Topic where name =:name").setParameter("name", name);
        Topic topic = (Topic) query.uniqueResult();
        return topic;
    }


}
