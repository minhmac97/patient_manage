package com.phy.service;

import com.phy.model.Users;

import java.util.List;

public interface UserServiceImpl {
    public void addUser(Users team);
    public void updateUser(Users team);
    public Users getUser(int id);
    public void deleteUser(int id);
    public List<Users> getUsers();
}
