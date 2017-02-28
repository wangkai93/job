package cn.edu.zzia.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.IResumeDao;
import cn.edu.zzia.job.domain.Job;
import cn.edu.zzia.job.domain.Page;
import cn.edu.zzia.job.domain.Resume;
import cn.edu.zzia.job.service.IResumeService;
import cn.edu.zzia.job.util.StringUtil;

@Service(value=IResumeService.SERVICE_NAME)
@Transactional(readOnly=false)
public class ResumeServiceImpl extends BaseService<Resume> implements IResumeService{
	
	private IResumeDao resumeDao = null;
	@Autowired
	public void setDAO(IResumeDao resumeDao) {
		this.resumeDao = resumeDao;
		super.setDAO(resumeDao);
	}
	@Override
	public List<Resume> getResumeByUser(String username) {
		if(StringUtil.isNotBlank(username)){
			List<Resume> resumeList = resumeDao.getResumeByUsername(username);
			if(null != resumeList && resumeList.size() > 0)
				return resumeList;
		}
		return null;
	}
	@Override
	public int deleteResumeByIds(Integer[] checkit) {
		if(null != checkit && checkit.length > 0){
			for(Integer id : checkit)
				resumeDao.deleteByPrimaryKey(id);
			return 1;
		}
		return 0;
	}
}
