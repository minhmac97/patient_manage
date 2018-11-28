package com.phy.dao;

import com.phy.model.Users;
import java.util.List;

public interface UserDAO {
    public void addUser(Users users);
    public void updateUser(Users users);
    public Users getUser(int id);
    public void deleteUser(int id);
    public List<Users> getUsers();
}
