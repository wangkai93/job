package cn.edu.zzia.job.domain;

import java.util.Date;

public class GuestBook {
	private Integer id;

	private String nickname;

	private String pic;

	private String email;

	private String qq;

	private String weburl;

	private String blogurl;

	private String expressions;

	private String content;

	private Date addtime;

	private String ip;

	private Integer replay;

	private Integer ifhide;

	private Page<GuestBook> page;

	public Page<GuestBook> getPage() {
		return page;
	}

	public void setPage(Page<GuestBook> page) {
		this.page = page;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname == null ? null : nickname.trim();
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic == null ? null : pic.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq == null ? null : qq.trim();
	}

	public String getWeburl() {
		return weburl;
	}

	public void setWeburl(String weburl) {
		this.weburl = weburl == null ? null : weburl.trim();
	}

	public String getBlogurl() {
		return blogurl;
	}

	public void setBlogurl(String blogurl) {
		this.blogurl = blogurl == null ? null : blogurl.trim();
	}

	public String getExpressions() {
		return expressions;
	}

	public void setExpressions(String expressions) {
		this.expressions = expressions == null ? null : expressions.trim();
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content == null ? null : content.trim();
	}

	public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip == null ? null : ip.trim();
	}

	public Integer getReplay() {
		return replay;
	}

	public void setReplay(Integer replay) {
		this.replay = replay;
	}

	public Integer getIfhide() {
		return ifhide;
	}

	public void setIfhide(Integer ifhide) {
		this.ifhide = ifhide;
	}
}