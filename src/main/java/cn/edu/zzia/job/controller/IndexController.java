package cn.edu.zzia.job.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.edu.zzia.job.domain.GuestBook;
import cn.edu.zzia.job.domain.Job;
import cn.edu.zzia.job.domain.News;
import cn.edu.zzia.job.domain.Resume;
import cn.edu.zzia.job.domain.User;
import cn.edu.zzia.job.service.IGuestBookService;
import cn.edu.zzia.job.service.IJobService;
import cn.edu.zzia.job.service.INewsService;
import cn.edu.zzia.job.service.IResumeService;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Resource(name=IJobService.SERVICE_NAME)
	private IJobService jobService = null;
	
	@Resource(name=IResumeService.SERVICE_NAME)
	private IResumeService resumeService = null;
	
	@Resource(name = INewsService.SERVICE_NAME)
	private INewsService newsService = null;
	
	@Resource(name = IGuestBookService.SERVICE_NAME)
	private IGuestBookService guestBookService = null;
	

	@RequestMapping(value = "/loaddata",produces = "application/json;charset=UTF-8", method = RequestMethod.POST)
	@ResponseBody()
	public String loadData(Map<String,Object> map) {

		List<News> newsList = newsService.getByConditionPage(new News());
		List<Job> jobsList = jobService.getByConditionPage(new Job());
		List<Resume> resumesList = resumeService.getByConditionPage(new Resume());
		List<GuestBook> guestBooksList = guestBookService.getByConditionPage(new GuestBook());
		
		if(null != newsList && newsList.size() > 0)
			map.put("news", newsList);
		if(null != jobsList && jobsList.size() > 0)
			map.put("jobs", jobsList);
		if(null != resumesList && resumesList.size() > 0)
			map.put("resumes", resumesList);
		if(null != guestBooksList && guestBooksList.size() > 0)
			map.put("guestBooks", guestBooksList);
		
		String json = JSON.toJSONString(map);
		System.out.println("json = " + json);
		return json;
	}
	
	
	
	
	@RequestMapping(value = "/user111",produces = "application/json;charset=UTF-8", method = RequestMethod.POST)
	@ResponseBody()
	public User loadData() {

		User user = new User();
		user.setId(1);
		user.setUsername("carter");
		user.setPassword("123");
		user.setIfuse(1);
		user.setLastip("sddd");
		
		return user;
	}
}
