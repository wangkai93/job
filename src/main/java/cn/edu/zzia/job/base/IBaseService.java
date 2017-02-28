package cn.edu.zzia.job.base;

import java.util.List;

import cn.edu.zzia.job.domain.Page;

public interface IBaseService<M> {
	int deleteByPrimaryKey(Integer uuid);

	int insert(M m);

	int insertSelective(M m);

	M selectByPrimaryKey(Integer uuid);

	int updateByPrimaryKeySelective(M M);

	int updateByPrimaryKey(M M);

	public List<M> getByConditionPage(M e);
}
