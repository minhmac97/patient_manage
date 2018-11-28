package com.phy.model;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="PROFILE")
public class Profile {
    @Id

    @GeneratedValue
    @Column(name = "PROFILEID")
    private int profileId;
    @Column(name = "NAME", nullable = false)
    private String name;
    @Column(name = "PATIENT_ID", nullable = false)
    private Integer patientId;
    @Column(name = "COUNTRY_ID", nullable = false)
    private Integer countryId;
    @Column(name = "PROVINCE_ID", nullable = false)
    private Integer provinceId;
    @Column(name = "DISTRICT_ID", nullable = false)
    private Integer districtId;
    @Column(name = "ZONE_ID", nullable = false)
    private Integer zoneId;
    @Column(name = "GENDER", nullable = false)
    private Integer gender;
    @Column(name = "AGE", nullable = false)
    private Integer age;
    @Column(name = "ADDRESS", nullable = false)
    private Date address;
    @Column(name = "PHONE", nullable = false)
    private String phone;
    @Column(name = "ACTIVE", nullable = false)
    private Integer active;
    @ManyToOne
    @JoinColumn(name = "USERID")
    private Users user;

    public int getProfileId() {
        return profileId;
    }

    public void setProfileId(int profileId) {
        this.profileId = profileId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    public Integer getCountryId() {
        return countryId;
    }

    public void setCountryId(Integer countryId) {
        this.countryId = countryId;
    }

    public Integer getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    public Integer getDistrictId() {
        return districtId;
    }

    public void setDistrictId(Integer districtId) {
        this.districtId = districtId;
    }

    public Integer getZoneId() {
        return zoneId;
    }

    public void setZoneId(Integer zoneId) {
        this.zoneId = zoneId;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Date getAddress() {
        return address;
    }

    public void setAddress(Date address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getActive() {
        return active;
    }

    public void setActive(Integer active) {
        this.active = active;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }
}
