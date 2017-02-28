package cn.edu.zzia.job.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import cn.edu.zzia.job.domain.Admin;
import cn.edu.zzia.job.domain.User;

public class SessionUtils {

	/**
	 * 处理验证码
	 * @param request
	 * @return
	 */
	public static boolean isCheckNum(HttpServletRequest request) {
		//获取已经存在的session
		HttpSession session=request.getSession(false);
		
		if(session==null){
			return false;
		}
		
		String check_number_key=(String)session.getAttribute("CHECK_NUMBER_KEY");
		if(StringUtil.isBlank(check_number_key)){
			return false;
		}
		
		//获取jsp页面文本框中输入的值
		//<input name="checkNum" type="text" value="" id="checkNum" style="width: 80">
		String saved=request.getParameter("checkCode");
		if(StringUtil.isBlank(saved)){
			return false;
		}
		
		//比对session中存放的值和页面文本框输入的验证码的值
		return check_number_key.equalsIgnoreCase(saved);
		
	}

	/**
	 * 保存当前登录用户的信息到session中
	 * @param request
	 * @param sysUser
	 */
	public static void setSysUserToSession(HttpServletRequest request,User sysUser) {
        HttpSession session=request.getSession();
		if(sysUser==null){
			return;
		}
		session.setAttribute("userKey", sysUser);
	}
	
	/**
	 * 保存当前登录管理员的信息到session中
	 * @param request
	 * @param admin
	 */
	public static void setAdminToSession(HttpServletRequest request,Admin admin) {
        HttpSession session=request.getSession();
		if(admin==null){
			return;
		}
		session.setAttribute("admin", admin);
	}

	/**
	 * 从session中获取当前登陆用户的信息
	 * @param request
	 * @return
	 */
	public static User getSysUserFormSession(HttpServletRequest request) {
		  HttpSession session=request.getSession(false);
		  if(session==null){
			  return null;
		  }
		  User SysUser=(User)session.getAttribute("userKey");
		  return SysUser;
	}
	
	/**
	 * 从session中获取当前登陆管理员的信息
	 * @param request
	 * @return
	 */
	public static Admin getAdminFormSession(HttpServletRequest request) {
		  HttpSession session=request.getSession(false);
		  if(session==null){
			  return null;
		  }
		  Admin admin=(Admin)session.getAttribute("admin");
		  return admin;
	}

}
