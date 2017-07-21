package com.Linksharing.ServiceInter;


import org.springframework.stereotype.Service;

/**
 * Created by dell on 7/16/2017.
 */
@Service
public interface UserLoginService {


    public boolean checkLogin(String username, String password);

}
