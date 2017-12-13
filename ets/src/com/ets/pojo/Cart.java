package com.ets.pojo;

import java.util.Date;

public class Cart {
    private Integer cartId;

    private Integer num;

    private Date createtime;

    private Date update;

    private Long userId;

    private Long price;

    private Integer itemId;

    private Byte check;

    public Cart(Integer cartId, Integer num, Date createtime, Date update, Long userId, Long price, Integer itemId, Byte check) {
        this.cartId = cartId;
        this.num = num;
        this.createtime = createtime;
        this.update = update;
        this.userId = userId;
        this.price = price;
        this.itemId = itemId;
        this.check = check;
    }

    public Cart() {
        super();
    }

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdate() {
        return update;
    }

    public void setUpdate(Date update) {
        this.update = update;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Byte getCheck() {
        return check;
    }

    public void setCheck(Byte check) {
        this.check = check;
    }
}