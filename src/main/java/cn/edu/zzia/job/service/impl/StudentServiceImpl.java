package cn.edu.zzia.job.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.IStudentDao;
import cn.edu.zzia.job.domain.Student;
import cn.edu.zzia.job.service.IStudentService;

@Service(value=IStudentService.SERVICE_NAME)
@Transactional(readOnly=false)
public class StudentServiceImpl extends BaseService<Student> implements IStudentService{
	
	private IStudentDao studentDao = null;
	@Autowired
	public void setDAO(IStudentDao studentDao) {
		this.studentDao = studentDao;
		super.setDAO(studentDao);
	}
}
