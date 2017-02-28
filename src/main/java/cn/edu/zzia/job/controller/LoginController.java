package cn.edu.zzia.job.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.zzia.job.domain.User;
import cn.edu.zzia.job.service.IUserService;
import cn.edu.zzia.job.util.SessionUtils;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Resource(name=IUserService.SERVICE_NAME)
	private IUserService userService = null;

	@RequestMapping("/toLogin")
	public String toLogin() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password,
			@RequestParam(value = "reg_type", required = true) String type,
			@RequestParam(value = "checkCode", required = true) String checkCode, HttpServletRequest request) {

		boolean passed = SessionUtils.isCheckNum(request);
		if(!passed){
			request.setAttribute("checkCodeError", "验证码错误");
			return "login";
		}else{
			User user = userService.findUserByUsernameAndPassword(username,password,type);
			if(null == user){
				request.setAttribute("loginError", "用户名后者密码错误");
				return "login";
			}else{
				user.setLogintimes(user.getLogintimes() + 1);
				userService.updateByPrimaryKeySelective(user);
				SessionUtils.setSysUserToSession(request, user);
				return "front_manager/index";
			}
		}
	}
}
