package cn.edu.zzia.job.domain;

import java.util.Date;

public class Resume {
	private Integer id;

	private String job;

	private String pay;

	private String school;

	private String sex;

	private Integer age;

	private String sheng;

	private String city;

	private String linkman;

	private String tel;

	private Integer yxq;

	private String member;

	private String type;

	private Date addtime;

	private Integer ifhide;

	private Integer visit;

	private String email;

	private String intro;

	private Page<Resume> page;

	public Page<Resume> getPage() {
		return page;
	}

	public void setPage(Page<Resume> page) {
		this.page = page;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job == null ? null : job.trim();
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay == null ? null : pay.trim();
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school == null ? null : school.trim();
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex == null ? null : sex.trim();
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSheng() {
		return sheng;
	}

	public void setSheng(String sheng) {
		this.sheng = sheng == null ? null : sheng.trim();
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city == null ? null : city.trim();
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro == null ? null : intro.trim();
	}
}