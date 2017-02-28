package cn.edu.zzia.job.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.zzia.job.base.IBaseDao;
import cn.edu.zzia.job.domain.Job;

@Repository
public interface IJobDao extends IBaseDao<Job>{

	/**
	 * 根据用户的用户名查询招聘信息
	 * @param user
	 * @return
	 */
	List<Job> getJobByUsername(@Param("username")String username);
}