package cn.edu.zzia.job.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.zzia.job.base.IBaseDao;
import cn.edu.zzia.job.domain.Resume;

@Repository
public interface IResumeDao extends IBaseDao<Resume>{

	/**
	 * 根据用户名查询该用户发布的所有求职信息
	 * @param username
	 * @return
	 */
	List<Resume> getResumeByUsername(@Param("username")String username);
}