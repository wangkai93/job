package cn.edu.zzia.job.service;

import cn.edu.zzia.job.base.IBaseService;
import cn.edu.zzia.job.domain.Student;

public interface IStudentService extends IBaseService<Student>{
	
	public static final String SERVICE_NAME = "cn.edu.zzia.job.service.impl.StudentServiceImpl";

	/**
	 * 根据id数组分割并删除普通用户
	 * @param checkit
	 * @return
	 */
	int deleteStudentByIds(String[] checkit);
}
