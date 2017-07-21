package com.Linksharing.Service.impl;

import com.Linksharing.Beans.LinkShareBean;
import com.Linksharing.DAO.DAOInter.LinkDao;
import com.Linksharing.DAO.DAOInter.UserDao;
import com.Linksharing.Model.Link;
import com.Linksharing.Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import javax.transaction.Transactional;
import java.util.Date;

/**
 * Created by dell on 7/21/2017.
 */
@Service
public class ShareLinkService implements com.Linksharing.ServiceInter.ShareLinkService {
    @Autowired
    LinkDao linkDao;

    @Autowired
    UserDao userDao;

    @Transactional
    @Override
    public boolean create(LinkShareBean linkShareBean) {

        User user = userDao.fetchUserByUsername(linkShareBean.getUser().getUsername());
        if(!ObjectUtils.isEmpty(user) && user.getId()>0){
            linkShareBean.setUser(user);
            User createdBy = new User();
            createdBy.setId(user.getId());
            linkShareBean.setDatecreated(new Date());
            linkShareBean.setLastupdated(new Date());
            Link link = prepareTopicFromBean(linkShareBean);
            if(!ObjectUtils.isEmpty(link)){
                linkDao.create(link);
            }else {
                return false;
            }
        }else{
            return false;
        }
        return true;
    }

    private Link prepareTopicFromBean(LinkShareBean linkShareBean){
        Link link= null;
        if(!ObjectUtils.isEmpty(linkShareBean)){
            link = new Link();
            link.setLink(linkShareBean.getLink());
            link.setDatecreated(linkShareBean.getDatecreated());
            link.setLastupdated(linkShareBean.getLastupdated());
            link.setDescription(linkShareBean.getDescription());
            link.setResourceRatings(linkShareBean.getResourceRatings());
            link.setTopic(linkShareBean.getTopic());
            link.setUser(linkShareBean.getUser());
        }
        return link;
    }
}
