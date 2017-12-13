package com.ets.pojo;

import java.util.Date;

public class Announcement {
    private Integer anId;

    private String title;

    private String content;

    private Integer adId;

    private Date create;

    private Date update;

    private Byte status;

    public Announcement(Integer anId, String title, String content, Integer adId, Date create, Date update, Byte status) {
        this.anId = anId;
        this.title = title;
        this.content = content;
        this.adId = adId;
        this.create = create;
        this.update = update;
        this.status = status;
    }

    public Announcement() {
        super();
    }

    public Integer getAnId() {
        return anId;
    }

    public void setAnId(Integer anId) {
        this.anId = anId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getAdId() {
        return adId;
    }

    public void setAdId(Integer adId) {
        this.adId = adId;
    }

    public Date getCreate() {
        return create;
    }

    public void setCreate(Date create) {
        this.create = create;
    }

    public Date getUpdate() {
        return update;
    }

    public void setUpdate(Date update) {
        this.update = update;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
}