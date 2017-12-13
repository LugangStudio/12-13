package com.ets.pojo;

import java.util.Date;

public class ItemDescribe {
    private Long itemId;

    private String itemDesc;

    private Date created;

    private Date updated;

    public ItemDescribe(Long itemId, String itemDesc, Date created, Date updated) {
        this.itemId = itemId;
        this.itemDesc = itemDesc;
        this.created = created;
        this.updated = updated;
    }

    public ItemDescribe() {
        super();
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }

    public String getItemDesc() {
        return itemDesc;
    }

    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc == null ? null : itemDesc.trim();
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }
}