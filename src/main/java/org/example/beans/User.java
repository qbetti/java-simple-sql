package org.example.beans;

import java.util.Date;

public class User {

    public static final String TABLE = "user";
    public static final String _ID = "id";
    public static final String _NAME = "name";
    public static final String _CREATED_BY = "created_by";
    public static final String _CREATED_DATE = "created_date";

    private int id;
    private String name;
    private Date createdDate;
    private String createdBy;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
}
