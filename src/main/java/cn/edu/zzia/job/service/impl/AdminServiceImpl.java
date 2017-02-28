package cn.edu.zzia.job.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.IAdminDao;
import cn.edu.zzia.job.domain.Admin;
import cn.edu.zzia.job.service.IAdminService;
import cn.edu.zzia.job.util.MD5keyBean;
import cn.edu.zzia.job.util.StringUtil;

@Service(value=IAdminService.SERVICE_NAME)
@Transactional(readOnly=false)
public class AdminServiceImpl extends BaseService<Admin> implements IAdminService{
	
	private IAdminDao adminDao = null;
	@Autowired
	public void setDAO(IAdminDao adminDao) {
		this.adminDao = adminDao;
		super.setDAO(adminDao);
	}
	@Override
	public Admin findAdminByUsernameAndPassword(Admin admin) {
		if(StringUtil.isNotBlank(admin.getPassword()) && StringUtil.isNotBlank(admin.getPassword())){
			admin.setPassword(new MD5keyBean().getkeyBeanofStr(admin.getPassword()));
			return adminDao.findAdminByEntity(admin);
		}
		return null;
	}
}
