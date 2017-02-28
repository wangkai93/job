package cn.edu.zzia.job.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
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

@Controller
@RequestMapping("/register")
public class RegisterController {
	private static final String COMPANY = "co";
	private static final String PERSON = "person";
	
	@Resource(name=IUserService.SERVICE_NAME)
	private IUserService userService = null;
	
	@Resource(name=IStudentService.SERVICE_NAME)
	private IStudentService studentService = null;
	
	@Resource(name=ICompanyService.SERVICE_NAME)
	private ICompanyService companyService = null;
	
	@RequestMapping(value="/prereg")
	public String prereg(){
		return "prereg";
	}
	@RequestMapping(value="/toreg")
	public String toRegister(){
		return "register";
	}
	
	@RequestMapping(value="/check",method=RequestMethod.POST)
	public String check(User user,@RequestParam("reg_type")String reg_type,HttpServletRequest request){
		String username = user.getUsername();
		boolean isExist = userService.checkUserByName(username);
		if(isExist){
			request.setAttribute("sameName", "该 用户名已存在");
			return "register";
		}else{
			request.setAttribute("user", user);
			if(reg_type.equals(PERSON))
				return "personreg";
			else
				return "companyreg";
		}
	}
	@RequestMapping(value="/student",method=RequestMethod.POST)
	public String register(Student student,HttpServletRequest request){
		try {
			student.setType(PERSON);
			student.setPassword(new MD5keyBean().getkeyBeanofStr(student.getPassword()));
			student.setIfuse(1);
			student.setLastip(request.getRemoteAddr());
			
			userService.insertSelective(student);
			student.setMid(student.getId());
			studentService.insertSelective(student);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/";
	}
	@RequestMapping(value="/company",method=RequestMethod.POST)
	public String register(Company company,HttpServletRequest request){
		
		try {
			company.setType(COMPANY);
			company.setPassword(new MD5keyBean().getkeyBeanofStr(company.getPassword()));
			company.setIfuse(1);
			company.setLastip(request.getRemoteAddr());
			
			userService.insertSelective(company);
			company.setMid(company.getId());
			companyService.insertSelective(company);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/";
	}
}
