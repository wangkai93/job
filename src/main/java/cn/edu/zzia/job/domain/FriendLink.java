package cn.edu.zzia.job.domain;

import java.util.Date;

public class FriendLink {
    private Integer id;

    private String linkname;

    private String linkurl;

    private String linkpic;

    private String intero;

    private Integer ifhide;

    private Integer ordervalue;

    private Date addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLinkname() {
        return linkname;
    }

    public void setLinkname(String linkname) {
        this.linkname = linkname == null ? null : linkname.trim();
    }

    public String getLinkurl() {
        return linkurl;
    }

    public void setLinkurl(String linkurl) {
        this.linkurl = linkurl == null ? null : linkurl.trim();
    }

    public String getLinkpic() {
        return linkpic;
    }

    public void setLinkpic(String linkpic) {
        this.linkpic = linkpic == null ? null : linkpic.trim();
    }

    public String getIntero() {
        return intero;
    }

    public void setIntero(String intero) {
        this.intero = intero == null ? null : intero.trim();
    }

    public Integer getIfhide() {
        return ifhide;
    }

    public void setIfhide(Integer ifhide) {
        this.ifhide = ifhide;
    }

    public Integer getOrdervalue() {
        return ordervalue;
    }

    public void setOrdervalue(Integer ordervalue) {
        this.ordervalue = ordervalue;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }
}