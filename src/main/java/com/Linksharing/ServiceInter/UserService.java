package com.Linksharing.ServiceInter;

import com.Linksharing.Beans.UserBean;
import com.Linksharing.Model.User;
import org.springframework.stereotype.Service;

/**
 * Created by dell on 7/15/2017.
 */
@Service
public interface UserService {
    public void addUser(UserBean userBean);
}
