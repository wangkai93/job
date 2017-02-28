package cn.edu.zzia.job.service;

import cn.edu.zzia.job.base.IBaseService;
import cn.edu.zzia.job.domain.Company;
import cn.edu.zzia.job.domain.Student;
import cn.edu.zzia.job.domain.User;

public interface IUserService extends IBaseService<User>{
	
	public static final String SERVICE_NAME = "cn.edu.zzia.job.service.impl.UserServiceImpl";

	/**
	 * 根据用户名查找用户是否存在
	 * @param username
	 * @return
	 */
	boolean checkUserByName(String username);

	/**
	 * 根据用户名密码和用户类型查找用户是否存在
	 * @param username
	 * @param getkeyBeanofStr
	 * @param type
	 * @return
	 */
	User findUserByUsernameAndPassword(String username, String password, String type);

	/**
	 * 根据用户id查询学生信息
	 * @param id
	 * @return
	 */
	Student selectStudentByUserId(Integer id);

	/**
	 * 根据用户id查询公司信息
	 * @param id
	 * @return
	 */
	Company selectCompanyByUserId(Integer id);


}
