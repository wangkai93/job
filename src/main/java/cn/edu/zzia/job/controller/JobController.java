package cn.edu.zzia.job.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.zzia.job.domain.Job;
import cn.edu.zzia.job.domain.Job;
import cn.edu.zzia.job.domain.User;
import cn.edu.zzia.job.service.IJobService;
import cn.edu.zzia.job.util.SessionUtils;
import cn.edu.zzia.job.util.StringUtil;

@Controller
@RequestMapping("/job")
public class JobController {
	
	@Resource(name = IJobService.SERVICE_NAME)
	private IJobService jobService = null;

	
	
	
	@RequestMapping(value="/update/{id}",method = RequestMethod.GET)
	public String updateJob(@PathVariable("id")Integer id,HttpServletRequest request){
		if(StringUtil.isNotBlank(id + "")){
			Job job = jobService.selectByPrimaryKey(id);
			request.setAttribute("job", job);
			return "front_manager/job/update_job";
		}
		return null;
	}
	
	
	@RequestMapping(value="/update",method = RequestMethod.POST)
	public String updateJob(Job job ,@RequestParam("id")Integer id,HttpServletRequest request){
		if(StringUtil.isNotBlank(id + "")){
			job.setId(id);
			jobService.updateByPrimaryKeySelective(job);
			request.setAttribute("message", "修改成功！");
			return "message";
		}
		return null;
	}
	
	
	@RequestMapping(value="/delete",method = RequestMethod.POST)
	public String deleteResume(@RequestParam("checkit")Integer[] checkit,HttpServletRequest request){
		if(null != checkit &&checkit.length > 0){
			int result = jobService.deleteJobByIds(checkit);
			request.setAttribute("message", result == 1 ? "删除成功！" : "删除失败");
		}
		return "message";
	}
	
	
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addJob(){
		return "front_manager/job/job";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addJob(Job job,HttpServletRequest request){
		
		User user = SessionUtils.getSysUserFormSession(request);
		if(null == user){
			return "redirect:login/toLogin";
		}
		try {
			job.setMember(user.getUsername());
			job.setType("co");
			job.setVisit(0);
			job.setIfhide(1);
			job.setAddtime(new Date());
			jobService.insertSelective(job);
			request.setAttribute("message", "插入成功！");
			return "message";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "front_manager/job/job";
	}
	
	@RequestMapping("/manage")
	public String getJobByType(HttpServletRequest request){
		User user = SessionUtils.getSysUserFormSession(request);
		if(null == user){
			return "redirect:login/toLogin";
		}
		List<Job> jobList = jobService.getJobByUser(user.getUsername());
		if(null != jobList && jobList.size() > 0){
			request.setAttribute("jobList", jobList);			
			return "front_manager/job/index";
		}
		return null;
	}
	
	
	@RequestMapping(value="/show/{id}")
	public String show(@PathVariable("id")String jobId,HttpServletRequest request){
		if(StringUtil.isNotBlank(jobId)){
			Integer uuid = Integer.parseInt(jobId);
			Job job = jobService.selectByPrimaryKey(uuid);
			request.setAttribute("job", job);
			return "zhaoinfo";
		}
		return null;
	}
	
	@RequestMapping("/getjobs")
	public String getPageJobs(HttpServletRequest request){
		List<Job> jobsList = jobService.getByConditionPage(new Job());
		if(null != jobsList && jobsList.size() > 0){
			request.setAttribute("jobsList", jobsList);
			return "zhao";
		}
		return null;
	}
}
