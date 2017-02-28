package cn.edu.zzia.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.ICompanyDao;
import cn.edu.zzia.job.dao.IStudentDao;
import cn.edu.zzia.job.dao.IUserDao;
import cn.edu.zzia.job.domain.Company;
import cn.edu.zzia.job.domain.Student;
import cn.edu.zzia.job.domain.User;
import cn.edu.zzia.job.service.IUserService;
import cn.edu.zzia.job.util.MD5keyBean;
import cn.edu.zzia.job.util.StringUtil;

@Service(value=IUserService.SERVICE_NAME)
@Transactional(readOnly=false)
public class UserServiceImpl extends BaseService<User> implements IUserService{
	
	@Autowired
	private IStudentDao studentDao = null;
	
	@Autowired
	private ICompanyDao companyDao = null;
	
	
	private IUserDao userDao = null;
	@Autowired
	public void setDAO(IUserDao userDao) {
		this.userDao = userDao;
		super.setDAO(userDao);
	}

	public boolean checkUserByName(String username) {
		if(StringUtil.isNotBlank(username)){
			List<User> list = userDao.selectUserByName(username);
			System.out.println("list.size() = " + list.size());
			if(null != list && list.size()!=0)
				return true;
			else
				return false;
		}
		return false;
	}

	@Override
	public User findUserByUsernameAndPassword(String username, String password, String type) {
		
		if(StringUtil.isNotBlank(username) && StringUtil.isNotBlank(password) && StringUtil.isNotBlank(type)){
			password = new MD5keyBean().getkeyBeanofStr(password);
			User user = userDao.selectUserByUsernameAndPassword(username,password,type);
			if(null != user)
				return user;
		}
		return null;
	}

	@Override
	public Student selectStudentByUserId(Integer id) {
		if(StringUtil.isNotBlank(id + "")){
			Student stu = studentDao.selectStudentByUserId(id);
			if(null != stu)
				return stu;
		}
		return null;
	}

	@Override
	public Company selectCompanyByUserId(Integer id) {
		if(StringUtil.isNotBlank(id + "")){
			Company com = companyDao.selectCompanyByUserId(id);
			if(null != com)
				return com;
		}
		return null;
	}

}
