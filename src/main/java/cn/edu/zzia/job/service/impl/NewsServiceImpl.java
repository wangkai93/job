package cn.edu.zzia.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.INewsDao;
import cn.edu.zzia.job.domain.News;
import cn.edu.zzia.job.service.INewsService;

@Service(value=INewsService.SERVICE_NAME)
@Transactional(readOnly=false)
public class NewsServiceImpl extends BaseService<News> implements INewsService{
	
	private INewsDao newsDao = null;
	@Autowired
	public void setDAO(INewsDao newsDao) {
		this.newsDao = newsDao;
		super.setDAO(newsDao);
	}
}
