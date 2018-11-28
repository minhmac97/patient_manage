package com.phy.model;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "SERVICE")
public class Service {
    @Id
    @GeneratedValue
    @Column(name = "SERVICEID")
    private int serviceId;
    @Column(name = "NAME", nullable = false)
    private String name;
    @Column(name = "PRICE", nullable = false)
    private String price;
    @Column(name = "CREATE_DATE", nullable = false)
    private Date createDate;
    @Column(name = "UPDATE_DATE", nullable = false)
    private Date updateDate;

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
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
}
