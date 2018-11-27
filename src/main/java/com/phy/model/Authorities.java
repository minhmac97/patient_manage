package com.phy.model;

import javax.persistence.*;

@Entity
@Table(name = "AUTHORITIES")
public class Authorities {
    @Id
    @GeneratedValue
    @Column(name = "AUTHORITY")
    private String authority;

    @ManyToOne
    @JoinColumn(name = "USERID")
    private Users user;
    public String getAuthority() {
        return authority;
    }
    public void setAuthority(String authority) {
        this.authority = authority;
    }
    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

}

