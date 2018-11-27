package com.phy.model;

import javax.persistence.*;
import java.util.Date;
@Entity
@Table(name = "DEPARTMENT")
public class Department {
    @Id
    @GeneratedValue
    @Column(name = "DEPARTMENTID")
    private String serviceId;
    @Column(name = "NAME", nullable = false)
    private String name;
    @Column(name = "CREATE_DATE", nullable = false)
    private Date createDate;
    @Column(name = "UPDATE_DATE", nullable = false)
    private Date updateDate;

    public String getServiceId() {
        return serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
