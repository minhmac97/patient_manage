package com.phy.dao;

import com.phy.model.Users;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDetailsDaoImp implements UserDetailsDao {

  @Autowired
  private SessionFactory sessionFactory;

  @Override
  public Users findUserByUsername(String username) {
    return sessionFactory.getCurrentSession().get(Users.class, username);
  }
}
