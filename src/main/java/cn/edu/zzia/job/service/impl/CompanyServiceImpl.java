package cn.edu.zzia.job.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.ICompanyDao;
import cn.edu.zzia.job.domain.Company;
import cn.edu.zzia.job.service.ICompanyService;

@Service(value=ICompanyService.SERVICE_NAME)
@Transactional(readOnly=false)
public class CompanyServiceImpl extends BaseService<Company> implements ICompanyService{
	
	private ICompanyDao companyDao = null;
	@Autowired
	public void setDAO(ICompanyDao companyDao) {
		this.companyDao = companyDao;
		super.setDAO(companyDao);
	}
}
