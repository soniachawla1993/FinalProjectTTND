package com.Linksharing.DAO;

import com.Linksharing.DAO.DAOInter.TopicDao;
import com.Linksharing.Model.Topic;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class TopicDaoImpl implements TopicDao {
    @Autowired
    SessionFactory sessionFactory;
    @Override
    public boolean create(Topic topic) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        session.saveOrUpdate(topic);
        session.getTransaction().commit();
        return topic.getId()>0;
    }
}
