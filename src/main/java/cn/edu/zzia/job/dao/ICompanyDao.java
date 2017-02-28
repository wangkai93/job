package cn.edu.zzia.job.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.zzia.job.base.IBaseDao;
import cn.edu.zzia.job.domain.Company;

@Repository
public interface ICompanyDao extends IBaseDao<Company>{

	/**
	 * 根据用户id查询公司信息
	 * @param id
	 * @return
	 */
	Company selectCompanyByUserId(@Param("id")Integer id);

}