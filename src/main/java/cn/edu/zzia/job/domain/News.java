package cn.edu.zzia.job.domain;

import java.util.Date;

public class News {
	private Integer id;

	private String title;

	private String pic;

	private Date addtime;

	private String adder;

	private Integer ifhide;

	private Integer visit;

	private Integer up;

	private String content;

	private Page<News> page;

	public Page<News> getPage() {
		return page;
	}

	public void setPage(Page<News> page) {
		this.page = page;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title == null ? null : title.trim();
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic == null ? null : pic.trim();
	}

	public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public String getAdder() {
		return adder;
	}

	public void setAdder(String adder) {
		this.adder = adder == null ? null : adder.trim();
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

	public Integer getUp() {
		return up;
	}

	public void setUp(Integer up) {
		this.up = up;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content == null ? null : content.trim();
	}
}