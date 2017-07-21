package com.Linksharing.Service.impl;

import com.Linksharing.Beans.TopicBean;
import com.Linksharing.DAO.DAOInter.TopicDao;
import com.Linksharing.DAO.DAOInter.UserDao;
import com.Linksharing.Model.Topic;
import com.Linksharing.Model.User;
import com.Linksharing.ServiceInter.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import javax.transaction.Transactional;
import java.util.Date;

/**
 * Created by dell on 7/20/2017.
 */
@Service
public class TopicServiceImpl implements TopicService
{
    @Autowired
    TopicDao topicDao;

    @Autowired
    UserDao userDao;

    @Transactional
    @Override
    public boolean create(TopicBean topicBean) {

        User user = userDao.fetchUserByUsername(topicBean.getUser().getUsername());
        if(!ObjectUtils.isEmpty(user) && user.getId()>0){
            topicBean.setUser(user);
            User createdBy = new User();
            createdBy.setId(user.getId());
            topicBean.setDatecreated(new Date());
            topicBean.setLastupdated(new Date());
            Topic topic = prepareTopicFromBean(topicBean);
            if(!ObjectUtils.isEmpty(topic)){
                topicDao.create(topic);
            }else {
                return false;
            }
        }else{
            return false;
        }
        return true;
    }

    private Topic prepareTopicFromBean(TopicBean topicBean){
        Topic topic = null;
        if(!ObjectUtils.isEmpty(topicBean)){
            topic = new Topic();
            topic.setName(topicBean.getName());
            topic.setVisibility(topicBean.getVisibility());
            topic.setDatecreated(topicBean.getDatecreated());
            topic.setUser(topicBean.getUser());
            topic.setLastupdated(topicBean.getLastupdated());
            topic.setResources(topicBean.getResources());
        }
        return topic;
    }

}
