package cn.edu.zzia.job.service;

import cn.edu.zzia.job.base.IBaseService;
import cn.edu.zzia.job.domain.GuestBook;

public interface IGuestBookService extends IBaseService<GuestBook>{
	
	public static final String SERVICE_NAME = "cn.edu.zzia.job.service.impl.GuestBookServiceImpl";

}
