package cn.edu.zzia.job.service;

import java.util.List;

import cn.edu.zzia.job.base.IBaseService;
import cn.edu.zzia.job.domain.Job;
import cn.edu.zzia.job.domain.User;

public interface IJobService extends IBaseService<Job>{
	
	public static final String SERVICE_NAME = "cn.edu.zzia.job.service.impl.JobServiceImpl";

	/**
	 * 根据用户名查询用户发布的招聘信息
	 * @param user
	 * @return
	 */
	List<Job> getJobByUser(String username);

	/**
	 * 根据传递过来的id数组批量删除招聘信息
	 * @param checkit
	 * @return
	 */
	int deleteJobByIds(Integer[] jobIds);

}
