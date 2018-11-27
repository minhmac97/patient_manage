package com.phy.dao;
import com.phy.model.Users;
public interface UserDetailsDao {
    Users findUserByUsername(String username);
}

