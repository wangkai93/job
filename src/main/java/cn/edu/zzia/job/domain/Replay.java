package cn.edu.zzia.job.domain;

import java.util.Date;

public class Replay {
    private Integer id;

    private Integer mid;

    private String replay;

    private String replayer;

    private Date replaytime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getReplay() {
        return replay;
    }

    public void setReplay(String replay) {
        this.replay = replay == null ? null : replay.trim();
    }

    public String getReplayer() {
        return replayer;
    }

    public void setReplayer(String replayer) {
        this.replayer = replayer == null ? null : replayer.trim();
    }

    public Date getReplaytime() {
        return replaytime;
    }

    public void setReplaytime(Date replaytime) {
        this.replaytime = replaytime;
    }
}