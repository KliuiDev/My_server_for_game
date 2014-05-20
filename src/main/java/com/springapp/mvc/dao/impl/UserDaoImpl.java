package com.springapp.mvc.dao.impl;

import com.springapp.mvc.dao.UserDao;
import com.springapp.mvc.model.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by MegaComp on 10.03.14.
 */
public class UserDaoImpl extends org.springframework.orm.hibernate3.support.HibernateDaoSupport implements UserDao {

    public void save(User user) {
        Session session = getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(user);
        tx.commit();
        session.close();
    }

    public void update(User user) {
        Session session = getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.update(user);
        tx.commit();
        session.close();
    }

    public User getById(Long id) {
        Session session = getSessionFactory().openSession();
        Criteria c = session.createCriteria(User.class)
                .add(Restrictions.eq("id", id));
        User result = (User) c.uniqueResult();
        session.close();
        return result;
    }

    public User getBySecondname(String secondName) {
        Session session = getSessionFactory().openSession();
        Criteria c = session.createCriteria(User.class)
                .add(Restrictions.eq("secondName", secondName));
        User result = (User) c.uniqueResult();
        session.close();
        return result;
    }


    public void deleteById(Long id) {
        Session session = getSessionFactory().openSession();
        Query q = session.createQuery("delete from User where id = :id");
        q.setLong("id", id);
        q.executeUpdate();
        session.close();
    }

    @SuppressWarnings("unchecked")
    public List<User> getUsers() {
        Session session = getSessionFactory().openSession();
        Criteria c = session.createCriteria(User.class);
        List<User> people = c.list();
        session.close();
        return people;


    }


}
