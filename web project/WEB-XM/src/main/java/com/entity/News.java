package com.entity;

import java.util.Date;

public class News {
    private int id;
    private String name;
    private Date inserttime;
    private  String content;

    public News(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public News(int id, String name, Date inserttime, String content) {
        this.id = id;
        this.name = name;
        this.inserttime = inserttime;
        this.content = content;
    }


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

    public Date getInserttime() {
        return inserttime;
    }

    public void setInserttime(Date inserttime) {
        this.inserttime = inserttime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.name = content;
    }
}
