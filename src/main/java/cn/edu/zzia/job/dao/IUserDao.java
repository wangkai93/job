package cn.edu.zzia.job.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.zzia.job.base.IBaseDao;
import cn.edu.zzia.job.domain.User;

@Repository
public interface IUserDao extends IBaseDao<User> {

	/**
	 * 根据名字查找用户
	 * 
	 * @param username
	 * @return
	 */
	List<User> selectUserByName(@Param("username") String username);

	/**
	 * 根据用户名，密码，类型去数据库查询用户
	 * 
	 * @param username
	 * @param password
	 * @param type
	 * @return
	 */
	User selectUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password,
			@Param("type") String type);
}