package com.phy.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "USERS")
public class Users {
    @Id
    @GeneratedValue
    @Column(name = "USERID")
    private String userId;
    @Column(name = "USERNAME", nullable = false)
    private String username;

    @Column(name = "PASSWORD", nullable = false)
    private String password;
    @Column(name = "AVATAR", nullable = false)
    private String avatar;
    @Column(name = "ROLE", nullable = false)
    private Integer role;
    @Column(name = "CREATE_DATE", nullable = false)
    private Date createDate;
    @Column(name = "UPDATE_DATE", nullable = false)
    private Date updateDate;
    @Column(name = "ACTIVED", nullable = false)
    private Integer actived;
    @Column(name = "NOTE", nullable = false)
    private String note;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private Set<Authorities> authorities = new HashSet<Authorities>();
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private Set<Authorities> profiles = new HashSet<Authorities>();

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Integer getActived() {
        return actived;
    }

    public void setActived(Integer actived) {
        this.actived = actived;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Set<Authorities> getAuthorities() {
        return authorities;
    }

    public void setAuthorities(Set<Authorities> authorities) {
        this.authorities = authorities;
    }

    public Set<Authorities> getProfiles() {
        return profiles;
    }

    public void setProfiles(Set<Authorities> profiles) {
        this.profiles = profiles;
    }
}

