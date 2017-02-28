package cn.edu.zzia.job.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.IFriendLinkDao;
import cn.edu.zzia.job.domain.FriendLink;
import cn.edu.zzia.job.service.IFriendLinkService;

@Service(value=IFriendLinkService.SERVICE_NAME)
@Transactional(readOnly=false)
public class FriendLinkServiceImpl extends BaseService<FriendLink> implements IFriendLinkService{
	
	private IFriendLinkDao friendLinkDao = null;
	@Autowired
	public void setDAO(IFriendLinkDao friendLinkDao) {
		this.friendLinkDao = friendLinkDao;
		super.setDAO(friendLinkDao);
	}
}
