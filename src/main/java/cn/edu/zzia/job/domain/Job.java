package cn.edu.zzia.job.domain;

import java.util.Date;

public class Job {
	private Integer id;

	private String need;

	private Integer num;

	private String danwei;

	private String linkman;

	private String tel;

	private String place;

	private String pay;

	private Integer yxq;

	private String member;

	private String type;

	private Date addtime;

	private Integer ifhide;

	private Integer visit;

	private String otherneed;

	private Page<Job> page;

	public Page<Job> getPage() {
		return page;
	}

	public void setPage(Page<Job> page) {
		this.page = page;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNeed() {
		return need;
	}

	public void setNeed(String need) {
		this.need = need == null ? null : need.trim();
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getDanwei() {
		return danwei;
	}

	public void setDanwei(String danwei) {
		this.danwei = danwei == null ? null : danwei.trim();
	}

	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman == null ? null : linkman.trim();
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel == null ? null : tel.trim();
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place == null ? null : place.trim();
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay == null ? null : pay.trim();
	}

	public Integer getYxq() {
		return yxq;
	}

	public void setYxq(Integer yxq) {
		this.yxq = yxq;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member == null ? null : member.trim();
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type == null ? null : type.trim();
	}

	public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Integer getIfhide() {
		return ifhide;
	}

	public void setIfhide(Integer ifhide) {
		this.ifhide = ifhide;
	}

	public Integer getVisit() {
		return visit;
	}

	public void setVisit(Integer visit) {
		this.visit = visit;
	}

	public String getOtherneed() {
		return otherneed;
	}

	public void setOtherneed(String otherneed) {
		this.otherneed = otherneed == null ? null : otherneed.trim();
	}
}