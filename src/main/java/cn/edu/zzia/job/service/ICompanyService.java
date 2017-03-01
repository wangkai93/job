package cn.edu.zzia.job.service;

import cn.edu.zzia.job.base.IBaseService;
import cn.edu.zzia.job.domain.Company;

public interface ICompanyService extends IBaseService<Company>{
	
	public static final String SERVICE_NAME = "cn.edu.zzia.job.service.impl.CompanyServiceImpl";

	/**
	 * 根据id数组分割并删除相应的公司信息
	 * @param checkit
	 * @return
	 */
	int deleteCompanyByIds(String[] checkit);
}
