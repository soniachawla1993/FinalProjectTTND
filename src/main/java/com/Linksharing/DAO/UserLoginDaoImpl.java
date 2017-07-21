package com.Linksharing.DAO;

import com.Linksharing.DAO.DAOInter.UserLoginDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

/**
 * Created by dell on 7/16/2017.
 */
@Repository("loginDao")
public class UserLoginDaoImpl implements UserLoginDao {

    @Autowired
    protected SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    protected Session getSession() {
        return sessionFactory.openSession();
    }

    public boolean checkLogin(String username, String password) {
        Session session = getSession();
        session.beginTransaction();
        session.getTransaction().commit();
        boolean userFound = false;
        Query query = session.createQuery("select username,password from User where  username=? AND password=?");
        query.setParameter(0, username);
        query.setParameter(1, password);
        List list = query.getResultList();
        if ((list != null) && (list.size() > 0)) {
            userFound = true;
        } else
            userFound = false;
        return userFound;
    }
}


