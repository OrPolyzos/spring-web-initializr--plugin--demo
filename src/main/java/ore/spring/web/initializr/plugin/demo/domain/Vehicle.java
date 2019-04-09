package ore.spring.web.initializr.plugin.demo.domain;

import spring.web.initializr.base.domain.ResourcePersistable;

import javax.persistence.*;
import java.io.Serializable;

@Entity(name = "vehicle")
public class Vehicle implements Serializable, ResourcePersistable<String> {

    @Id
    @Column(name = "id", nullable = false)
    private String id;

    @Column(name = "brand", nullable = false)
    private String brand;

    @Column(name = "model", nullable = false)
    private String model;

    @Column(name = "fuel_type", nullable = false)
    private String fuelType;

    @Column(name = "year", nullable = false)
    private String year;

    @Column(name = "color", nullable = false)
    private String color;

    @Column(name = "user_id", nullable = false)
    private Long userID;

    @ManyToOne(optional = false)
    @JoinColumn(name = "user_id", referencedColumnName = "id", updatable = false, insertable = false)
    private User user;

    @Override
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Long getUserID() {
        return userID;
    }

    public void setUserID(Long userID) {
        this.userID = userID;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
