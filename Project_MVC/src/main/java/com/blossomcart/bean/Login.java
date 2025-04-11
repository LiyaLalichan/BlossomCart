package com.blossomcart.bean;

public class Login {
    private String uname;
    private String pword;
    private String usertype;
    private int shopId;  // Add shopId to store the shop_id for shop owners

    // Getter and Setter for uname
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    // Getter and Setter for pword
    public String getPword() {
        return pword;
    }

    public void setPword(String pword) {
        this.pword = pword;
    }

    // Getter and Setter for usertype
    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    // Getter and Setter for shopId
    public int getShopId() {
        return shopId;
    }

    public void setShopId(int shopId) {
        this.shopId = shopId;
    }
}
