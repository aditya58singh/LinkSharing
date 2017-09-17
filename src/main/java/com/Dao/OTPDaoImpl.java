package com.Dao;

import com.entities.OTPMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

@Repository
public class OTPDaoImpl implements OTPDao {

    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    @Override
    public boolean otpsave(OTPMapping otp) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(otp);
        session.getTransaction().commit();
        session.close();
        System.out.println("Successfully created " + otp.toString());
        return true;
    }

    @Override
    public OTPMapping findByEmail(String email) {
        Session session = sessionFactory.openSession();
        Query query= session.createQuery("from OTPMapping where email=:email");
        //System.out.println(query);
        query.setParameter("email", email);
        OTPMapping otp = (OTPMapping) query.uniqueResult();
        session.close();
        return otp;
    }
}
