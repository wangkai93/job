package cn.edu.zzia.job.base;

import java.util.List;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public class BaseService<E> implements IBaseService<E> {

	private IBaseDao<E> baseDao = null;

	public void setDAO(IBaseDao<E> dao) {
		baseDao = dao;
	}

	@Transactional(isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED, readOnly = true)
	public int deleteByPrimaryKey(Integer uuid) {
		return baseDao.deleteByPrimaryKey(uuid);
	}

	@Transactional(isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED, readOnly = true)
	public int insert(E entity) {
		return baseDao.insert(entity);
	}

	@Transactional(isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED, readOnly = true)
	public int insertSelective(E entity) {
		return baseDao.insertSelective(entity);
	}

	public E selectByPrimaryKey(Integer uuid) {
		return baseDao.selectByPrimaryKey(uuid);
	}

	@Transactional(isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED, readOnly = true)
	public int updateByPrimaryKeySelective(E entity) {
		return baseDao.updateByPrimaryKeySelective(entity);
	}

	@Transactional(isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED, readOnly = true)
	public int updateByPrimaryKey(E entity) {
		return baseDao.updateByPrimaryKey(entity);
	}

	public List<E> getByConditionPage(E e) {
		if (null != e)
			return baseDao.getByConditionPage(e);
		return null;
	}
}
