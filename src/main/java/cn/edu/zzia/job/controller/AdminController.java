package cn.edu.zzia.job.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.zzia.job.domain.Admin;
import cn.edu.zzia.job.domain.Company;
import cn.edu.zzia.job.domain.Job;
import cn.edu.zzia.job.domain.Resume;
import cn.edu.zzia.job.domain.Student;
import cn.edu.zzia.job.service.IAdminService;
import cn.edu.zzia.job.service.ICompanyService;
import cn.edu.zzia.job.service.IJobService;
import cn.edu.zzia.job.service.IResumeService;
import cn.edu.zzia.job.service.IStudentService;
import cn.edu.zzia.job.util.MD5keyBean;
import cn.edu.zzia.job.util.SessionUtils;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Resource(name=IAdminService.SERVICE_NAME)
	private IAdminService adminService = null;
	
	@Resource(name = IStudentService.SERVICE_NAME)
	private IStudentService studentService = null;
	
	@Resource(name = ICompanyService.SERVICE_NAME)
	private ICompanyService companyService = null;
	
	@Resource(name = IJobService.SERVICE_NAME)
	private IJobService jobService = null;
	
	@Resource(name = IResumeService.SERVICE_NAME)
	private IResumeService resumeService = null;
	
	
	@RequestMapping("/studentManage")
	public String studentManage(HttpServletRequest request){
		
		List<Student> stuList = studentService.getByConditionPage(new Student());
		
		request.setAttribute("stuList", stuList);
		return "admin/member/person";
	}
	
	@RequestMapping("/companyManage")
	public String companyManage(HttpServletRequest request){
		List<Company> comList = companyService.getByConditionPage(new Company());
		request.setAttribute("comList", comList);
		return "admin/member/co";
	}
	
	
	@RequestMapping("/jobManage")
	public String jobManage(HttpServletRequest request){
		List<Job> jobList = jobService.getByConditionPage(new Job());
		request.setAttribute("jobList", jobList);
		return "admin/info/index";
	}
	
	@RequestMapping("/resumeManage")
	public String resumeManage(HttpServletRequest request){
		List<Resume> resumeList = resumeService.getByConditionPage(new Resume());
		request.setAttribute("resumeList", resumeList);
		return "admin/info/default";
	}
	
	@RequestMapping("/newsManage")
	public String newsManage(){
		
		
		return "";
	}
	
	@RequestMapping("/guestbookManage")
	public String guestBookManage(){
		
		
		return "";
	}
	
	
	@RequestMapping(value = "/editpwd", method = RequestMethod.GET)
	public String editPwd() {
		return "admin/editpwd";
	}
	
	@RequestMapping(value = "/editpwd", method = RequestMethod.POST)
	public String editPwd(@RequestParam("oldpwd") String oldpwd, @RequestParam("newpwd") String newpwd,
			@RequestParam("repwd") String repwd,HttpServletRequest request) {
		Admin admin = SessionUtils.getAdminFormSession(request);
		String password = admin.getPassword();
		MD5keyBean md5 = new MD5keyBean();
		if(!password.equals(md5.getkeyBeanofStr(oldpwd))){
			request.setAttribute("pwdError", "原密码不正确");
			return "admin/editpwd";
		}
		
		if(!newpwd.equals(repwd)){
			request.setAttribute("pwdError", "两次输入的密码不一致");
			return "admin/editpwd";
		}
		
		admin.setPassword(md5.getkeyBeanofStr(newpwd));
		adminService.updateByPrimaryKeySelective(admin);
		request.setAttribute("message", "修改密码成功");
		return "message";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Admin admin,@RequestParam("checkCode")String checkCode,HttpServletRequest request){

		boolean passed = SessionUtils.isCheckNum(request);
		if(!passed){
			request.setAttribute("checkCodeError", "验证码错误");
			return "admin/login";
		}else{
			admin = adminService.findAdminByUsernameAndPassword(admin);
			if(null == admin){
				request.setAttribute("loginError", "用户名后者密码错误");
				return "admin/login";
			}else{
				SessionUtils.setAdminToSession(request, admin);
				return "admin/index";
			}
		}
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "admin/login";
	}
}
