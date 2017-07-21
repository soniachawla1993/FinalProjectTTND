package com.Linksharing.Service.impl;

import com.Linksharing.DAO.DAOInter.UserLoginDao;
import com.Linksharing.ServiceInter.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service

public class UserLoginServiceImpl implements UserLoginService {
    @Autowired
    private UserLoginDao userLoginDao;

    @Transactional
    @Override
    public boolean checkLogin(String username,String password) {
        return userLoginDao.checkLogin(username,password);
    }


}
