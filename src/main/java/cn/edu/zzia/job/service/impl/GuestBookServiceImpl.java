package cn.edu.zzia.job.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.IGuestBookDao;
import cn.edu.zzia.job.domain.GuestBook;
import cn.edu.zzia.job.service.IGuestBookService;

@Service(value=IGuestBookService.SERVICE_NAME)
@Transactional(readOnly=false)
public class GuestBookServiceImpl extends BaseService<GuestBook> implements IGuestBookService{
	
	private IGuestBookDao guestBookDao = null;
	@Autowired
	public void setDAO(IGuestBookDao guestBookDao) {
		this.guestBookDao = guestBookDao;
		super.setDAO(guestBookDao);
	}
}
