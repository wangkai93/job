package cn.edu.zzia.job.base;

import java.util.List;

public interface IBaseDao<E> {

	int deleteByPrimaryKey(Integer id);

	int insert(E entity);

	int insertSelective(E entity);

	E selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(E entity);

	int updateByPrimaryKey(E entity);
	
	public List<E> getByConditionPage(E e);

}
