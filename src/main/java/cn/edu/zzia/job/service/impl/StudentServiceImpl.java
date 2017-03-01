package cn.edu.zzia.job.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.IStudentDao;
import cn.edu.zzia.job.dao.IUserDao;
import cn.edu.zzia.job.domain.Student;
import cn.edu.zzia.job.service.IStudentService;

@Service(value=IStudentService.SERVICE_NAME)
@Transactional(readOnly=false)
public class StudentServiceImpl extends BaseService<Student> implements IStudentService{
	
	private IStudentDao studentDao = null;
	@Autowired
	private IUserDao userDao = null;
	@Autowired
	public void setDAO(IStudentDao studentDao) {
		this.studentDao = studentDao;
		super.setDAO(studentDao);
	}
	@Override
	public int deleteStudentByIds(String[] checkit) {
		int result = 0;
		if(null != checkit && checkit.length > 0){
			for(String ids : checkit){
				
				String[] arr = ids.split("###");
				result += deleteByPrimaryKey(Integer.parseInt(arr[0]));
				result += userDao.deleteByPrimaryKey(Integer.parseInt(arr[1]));
			}
			return result;
		}
		return 0;
	}
}
