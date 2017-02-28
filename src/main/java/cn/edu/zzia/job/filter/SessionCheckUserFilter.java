package cn.edu.zzia.job.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.zzia.job.domain.User;
import cn.edu.zzia.job.util.SessionUtils;


public class SessionCheckUserFilter implements Filter {

	private List<String> list;
	
	public void init(FilterConfig filterConfig) throws ServletException {
		//自己处理放置在资源文件,利用流读入
		list=new ArrayList<String>();
		list.add("/menu");
		list.add("/add");
		list.add("/manage");
		list.add("/update");
		list.add("/editpwd");
	}
	
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)res;
		String path=request.getServletPath();
		
		//对 /image.jsp  /index.jsp  /login.jsp   /sys/sysUserAction_isLogin路径过滤器要放行
		if(list!=null&&!list.contains(path)){
			chain.doFilter(request, response);
			return;
		}
		
		//获取当前的登陆用户
		User sysUser=SessionUtils.getSysUserFormSession(request);
		
		//如果用户!=null 表示用户已经登陆
		if(sysUser!=null){
			//放行
			chain.doFilter(request, response);
		}else{  //如果用户==null 表示用户没有登陆
			//重定向到login.jsp(index.jsp)
			response.sendRedirect(request.getContextPath());
		}
	}

	public void destroy() {

	}

}
