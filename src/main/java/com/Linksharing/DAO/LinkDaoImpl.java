package com.Linksharing.DAO;

import com.Linksharing.DAO.DAOInter.LinkDao;
import com.Linksharing.Model.Link;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by dell on 7/21/2017.
 */
@Repository
public class LinkDaoImpl implements LinkDao {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public boolean create(Link link) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.saveOrUpdate(link);
        session.getTransaction().commit();
        return link.getResourceid() > 0;
    }
}