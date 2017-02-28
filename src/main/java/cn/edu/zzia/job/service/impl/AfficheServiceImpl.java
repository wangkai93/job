package cn.edu.zzia.job.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.IAfficheDao;
import cn.edu.zzia.job.domain.Affiche;
import cn.edu.zzia.job.service.IAfficheService;

@Service(value=IAfficheService.SERVICE_NAME)
@Transactional(readOnly=false)
public class AfficheServiceImpl extends BaseService<Affiche> implements IAfficheService{
	
	private IAfficheDao afficheDao = null;
	@Autowired
	public void setDAO(IAfficheDao afficheDao) {
		this.afficheDao = afficheDao;
		super.setDAO(afficheDao);
	}
}
