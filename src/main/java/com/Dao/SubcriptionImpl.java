package com.Dao;

import com.entities.Subscription;
import com.entities.Topic;
import com.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import java.util.Date;

/**
 * Created by dash on 7/20/2017.
 */
@Repository
public class SubcriptionImpl implements SubcriptionDao {

    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    @Override
    public boolean Subscribe(User user, Topic topic, String seriousness) {
        Subscription subscription = new Subscription();
        Subscription.Seriousness serious = Subscription.Seriousness.valueOf(seriousness);
        subscription.setSeriousness(serious);
        subscription.setDatecreated(new Date());
        subscription.setUser(user);
        subscription.setTopic(topic);
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(subscription);
        session.getTransaction().commit();
        session.close();
        return true;


    }
}
