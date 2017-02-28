package cn.edu.zzia.job.dao;

import org.springframework.stereotype.Repository;

import cn.edu.zzia.job.base.IBaseDao;
import cn.edu.zzia.job.domain.Admin;
@Repository
public interface IAdminDao extends IBaseDao<Admin>{

	/**
	 * 根据实体封装的用户名和密码查询管理员
	 * @param admin
	 * @return
	 */
	Admin findAdminByEntity(Admin admin);
}