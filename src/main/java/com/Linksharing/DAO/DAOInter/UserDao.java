package com.Linksharing.DAO.DAOInter;

import com.Linksharing.Model.User;
import org.springframework.stereotype.Repository;

/**
 * Created by dell on 7/15/2017.
 */
@Repository
public interface UserDao {
    public void addUser(User user);
    public User fetchUserByUsername(String username);
}
