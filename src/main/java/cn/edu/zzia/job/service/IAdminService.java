package cn.edu.zzia.job.service;

import cn.edu.zzia.job.base.IBaseService;
import cn.edu.zzia.job.domain.Admin;

public interface IAdminService extends IBaseService<Admin>{
	
	public static final String SERVICE_NAME = "cn.edu.zzia.job.service.impl.AdminServiceImpl";

	/**
	 * 根据页面封装的实体信息查询管理员
	 * @param admin
	 * @return
	 */
	Admin findAdminByUsernameAndPassword(Admin admin);
}
