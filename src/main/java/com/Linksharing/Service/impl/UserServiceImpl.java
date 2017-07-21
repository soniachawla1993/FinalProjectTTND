package com.Linksharing.Service.impl;

import com.Linksharing.Beans.UserBean;
import com.Linksharing.DAO.DAOInter.UserDao;
import com.Linksharing.Model.User;
import com.Linksharing.ServiceInter.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

import org.springframework.util.ObjectUtils;

import java.util.Date;

/**
 * Created by dell on 7/15/2017.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Transactional
    public void addUser(UserBean userBean) {
        User user=prepareModel(userBean);
        userDao.addUser(user);

    }
    private User prepareModel(UserBean userBean)
    {

        User user=new User();
        if(!ObjectUtils.isEmpty(userBean))
        {
            user.setFirstname(userBean.getFirstname());
            user.setLastname(userBean.getLastname());
            user.setActive(userBean.isActive());
            user.setAdmin(userBean.isAdmin());
            user.setDatecreated(userBean.getDatecareated());
            user.setLastupdated(userBean.getLastupdate());
            user.setEmail(userBean.getEmail());
            user.setUsername(userBean.getUsername());
            user.setPassword(userBean.getPassword());
            user.setPhoto(userBean.getPhoto());
            user.setAdmin(false);
            Date date=new Date();
            user.setDatecreated(date);
            user.setLastupdated(date);
            user.setActive(true);
//        user.setPhoto(user.getPhoto());
            user.setEmail(user.getEmail());
        }
        return user;
    }
}
