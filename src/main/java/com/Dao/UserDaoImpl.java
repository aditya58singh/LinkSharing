package com.Dao;

import com.entities.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    public boolean save(User e) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(e);
        session.getTransaction().commit();
        session.close();
        System.out.println("Successfully created " + e.toString());
        return true;
    }

    @Override
    public User findUserByNameAndPassword(String userName, String password) throws Exception {
        Query query = sessionFactory.openSession().
                createQuery("from User where userName=:userName and password=:password");
        query.setParameter("userName", userName);
        query.setParameter("password", password);
        User user = (User) query.uniqueResult();
        return user;

    }

    @Override
    public User findUserByUserName(String userName) {
        Query query = sessionFactory.openSession().createQuery("from User where userName =:userName").setParameter("userName", userName);
        User user = (User) query.uniqueResult();
        return user;
    }

    @Override
    public User findByEmail(String email) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("from User where email=:email");
        //System.out.println(query);
        query.setParameter("email", email);
        User user = (User) query.uniqueResult();
        session.close();
        return user;
    }


    @Override
    public boolean updatePassword(String email, String password) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("update User set password=:password where email=:email");
        query.setParameter("password", password);
        query.setParameter("email", email);
        query.executeUpdate();
        query = session.createQuery("delete from OTPMapping where email=:email");
        query.setParameter("email", email);
        query.executeUpdate();
        session.getTransaction().commit();
        session.close();
        return true;
    }

    @Override
    public boolean updateprofile(User user) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(user);
        session.getTransaction().commit();
        session.close();
        System.out.println("i am in profile update");
        return true;
    }

    @Override
    public boolean updatepassword(User user) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(user);
        session.getTransaction().commit();
        session.close();
        return true;
    }

}
