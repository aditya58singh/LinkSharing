package com.Services;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Service;

@Service
public class ValidationServiceImpl implements ValidationService {
    @Override
    public Object checkUniqueEmail(String email) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session mysession = sessionFactory.openSession();
        Query query = mysession.createQuery("select email FROM User where email=:mail ").
                setParameter("mail", email);
        Object result = query.uniqueResult();
        mysession.close();
        return result;
    }

    @Override
    public Object checkUniqueUsername(String username) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session mysession = sessionFactory.openSession();
        Query query = mysession.createQuery("select userName FROM User where userName=:userName ").
                setParameter("userName", username);
        Object result = query.uniqueResult();
        mysession.close();
        return result;
    }

}
