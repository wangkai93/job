package cn.edu.zzia.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.zzia.job.base.BaseService;
import cn.edu.zzia.job.dao.IJobDao;
import cn.edu.zzia.job.domain.Job;
import cn.edu.zzia.job.service.IJobService;
import cn.edu.zzia.job.util.StringUtil;

@Service(value=IJobService.SERVICE_NAME)
@Transactional(readOnly=false)
public class JobServiceImpl extends BaseService<Job> implements IJobService{
	
	private IJobDao jobDao = null;
	@Autowired
	public void setDAO(IJobDao jobDao) {
		this.jobDao = jobDao;
		super.setDAO(jobDao);
	}
	@Override
	public List<Job> getJobByUser(String username) {
		if(StringUtil.isNotBlank(username)){
			List<Job> jobList = jobDao.getJobByUsername(username);
			if(null != jobList && jobList.size() > 0)
				return jobList;
		}
		return null;
	}
	@Override
	public int deleteJobByIds(Integer[] jobIds) {
		if(null != jobIds && jobIds.length > 0){
			for(Integer id : jobIds)
				jobDao.deleteByPrimaryKey(id);
			return 1;
		}
		return 0;
	}
}
