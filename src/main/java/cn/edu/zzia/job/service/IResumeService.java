package cn.edu.zzia.job.service;

import java.util.List;

import cn.edu.zzia.job.base.IBaseService;
import cn.edu.zzia.job.domain.Resume;

public interface IResumeService extends IBaseService<Resume>{
	
	public static final String SERVICE_NAME = "cn.edu.zzia.job.service.impl.ResumeServiceImpl";

	/**
	 * 根据用户名查询用户发布的求职信息
	 * @param username
	 * @return
	 */
	List<Resume> getResumeByUser(String username);

	/**
	 * 根据id数组批量删除求职信息
	 * @param checkit
	 */
	int deleteResumeByIds(Integer[] checkit);

}
