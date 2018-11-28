package com.phy.dao;

import com.phy.model.Users;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class UserDAOImpl implements UserDAO{
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }


    public void addUser(Users users) {
        getCurrentSession().save(users);
    }

    public void updateUser(Users users) {
        Users userToUpdate=getUser(users.getUserId());
        userToUpdate.setUsername(users.getUsername());
        getCurrentSession().update(userToUpdate);
    }

    public Users getUser(int id) {
        Users user=(Users)getCurrentSession().get(Users.class,id);
        return user;
    }

    public void deleteUser(int id) {
        Users user = getUser(id);
        if(user!=null){
            getCurrentSession().delete(user);
        }
    }


    @SuppressWarnings("unchecked")
    public List<Users> getUsers() {return getCurrentSession().createQuery("from Users").list(); }


}
