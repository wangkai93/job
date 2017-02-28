package cn.edu.zzia.job.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.zzia.job.domain.Company;
import cn.edu.zzia.job.domain.Student;
import cn.edu.zzia.job.domain.User;
import cn.edu.zzia.job.service.ICompanyService;
import cn.edu.zzia.job.service.IStudentService;
import cn.edu.zzia.job.service.IUserService;
import cn.edu.zzia.job.util.MD5keyBean;
import cn.edu.zzia.job.util.SessionUtils;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource(name = IUserService.SERVICE_NAME)
	private IUserService userService = null;
	
	@Resource(name = IStudentService.SERVICE_NAME)
	private IStudentService studentService = null;
	
	@Resource(name = ICompanyService.SERVICE_NAME)
	private ICompanyService companyService = null;

	@RequestMapping(value = "/editpwd", method = RequestMethod.GET)
	public String editPwd() {
		return "front_manager/info/editpwd";
	}

	@RequestMapping(value = "/editpwd", method = RequestMethod.POST)
	public String editPwd(@RequestParam("oldpwd") String oldpwd, @RequestParam("newpwd") String newpwd,
			@RequestParam("repwd") String repwd,HttpServletRequest request) {
		User user = SessionUtils.getSysUserFormSession(request);
		String password = user.getPassword();
		MD5keyBean md5 = new MD5keyBean();
		if(!password.equals(md5.getkeyBeanofStr(oldpwd))){
			request.setAttribute("pwdError", "原密码不正确");
			return "front_manager/info/editpwd";
		}
		
		if(!newpwd.equals(repwd)){
			request.setAttribute("pwdError", "两次输入的密码不一致");
			return "front_manager/info/editpwd";
		}
		
		user.setPassword(md5.getkeyBeanofStr(newpwd));
		userService.updateByPrimaryKeySelective(user);
		request.setAttribute("message", "修改密码成功");
		return "message";
	}
	
	@RequestMapping(value="/update/{type}/{id}",method = RequestMethod.GET)
	public String updateInfo(@PathVariable("type")String type,@PathVariable("id")Integer id,HttpServletRequest request){
		
		if(type.equals("person")){
			Student stu = userService.selectStudentByUserId(id);
			request.setAttribute("stu", stu);
			return "front_manager/info/info";
		}
		else{
			Company com = userService.selectCompanyByUserId(id);
			request.setAttribute("com", com);
			return "front_manager/info/coinfo";
		}
	}
	
	@RequestMapping(value="/updatestu",method = RequestMethod.POST)
	public String updateCom(Student student,HttpServletRequest request){
		
		int result = studentService.updateByPrimaryKeySelective(student);
		request.setAttribute("message", result == 1 ? "修改成功" : "修改失败");
		return "message";
	}
	
	@RequestMapping(value="/updatecom",method = RequestMethod.POST)
	public String updateCom(Company company,HttpServletRequest request){
		
		int result = companyService.updateByPrimaryKeySelective(company);
		request.setAttribute("message", result == 1 ? "修改成功" : "修改失败");
		return "message";
	}

}
