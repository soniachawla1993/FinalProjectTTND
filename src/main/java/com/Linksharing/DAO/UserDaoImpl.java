package com.Linksharing.DAO;

import com.Linksharing.DAO.DAOInter.UserDao;
import com.Linksharing.Model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by dell on 7/15/2017.
 */
@Repository("userDao")
public class UserDaoImpl implements UserDao {
    @Autowired
    private SessionFactory sessionFactory ;

    public void addUser(User user) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        session.saveOrUpdate(user);
        session.getTransaction().commit();
//        sessionFactory.getCurrentSession().);
    }

    public User fetchUserByUsername(String username){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query<User> userQuery = session.createQuery("from User where username=?", User.class);
        userQuery.setParameter(0, username);
        User user = userQuery.getSingleResult();
        return user;
    }
}
