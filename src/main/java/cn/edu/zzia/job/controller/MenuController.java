package cn.edu.zzia.job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@RequestMapping(value="/header")
	public String header(){
		return "front_manager/iframe/header";
	}

	@RequestMapping(value="/left")
	public String front_left(){
		return "front_manager/iframe/menu";
	}
	@RequestMapping(value="/main")
	public String main(){
		return "front_manager/iframe/main";
	}
	
	
	@RequestMapping(value="/admin_header")
	public String admin_header(){
		return "admin/header";
	}

	@RequestMapping(value="/admin_left")
	public String admin_left(){
		return "admin/menu";
	}
	@RequestMapping(value="/admin_main")
	public String admin_main(){
		return "admin/main";
	}
}
