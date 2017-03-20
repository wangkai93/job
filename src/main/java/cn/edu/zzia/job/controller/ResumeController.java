package cn.edu.zzia.job.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.zzia.job.domain.Resume;
import cn.edu.zzia.job.domain.User;
import cn.edu.zzia.job.service.IResumeService;
import cn.edu.zzia.job.util.SessionUtils;
import cn.edu.zzia.job.util.StringUtil;

@Controller
@RequestMapping("/resume")
public class ResumeController {

	@Resource(name = IResumeService.SERVICE_NAME)
	private IResumeService resumeService = null;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addResume() {

		return "front_manager/job/resume";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String updateResume(@PathVariable("id") Integer id, HttpServletRequest request) {
		if (StringUtil.isNotBlank(id + "")) {
			Resume resume = resumeService.selectByPrimaryKey(id);
			request.setAttribute("resume", resume);
			return "front_manager/job/update_resume";
		}
		return null;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateResume(Resume resume, @RequestParam("id") Integer id, HttpServletRequest request) {
		if (StringUtil.isNotBlank(id + "")) {
			resume.setId(id);
			resumeService.updateByPrimaryKeySelective(resume);
			request.setAttribute("message", "修改成功！");
			return "message";
		}
		return null;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteResume(@RequestParam("checkit") Integer[] checkit, HttpServletRequest request) {
		if (null != checkit && checkit.length > 0) {
			int result = resumeService.deleteResumeByIds(checkit);
			request.setAttribute("message", result == 1 ? "删除成功！" : "删除失败");
		}
		return "message";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addResume(Resume resume, HttpServletRequest request) {

		User user = SessionUtils.getSysUserFormSession(request);
		if (null == user) {
			return "redirect:login/toLogin";
		}
		try {
			resume.setMember(user.getUsername());
			resume.setType("person");
			resume.setVisit(0);
			resume.setIfhide(1);
			resume.setAddtime(new Date());
			resumeService.insertSelective(resume);
			request.setAttribute("message", "插入成功！");
			return "message";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "front_manager/job/resume";
	}

	@RequestMapping("/manage")
	public String getResumeByType(HttpServletRequest request) {
		User user = SessionUtils.getSysUserFormSession(request);
		if (null == user) {
			return "redirect:/login/toLogin";
		}
		List<Resume> resumeList = resumeService.getResumeByUser(user.getUsername());
		request.setAttribute("resumeList", resumeList);
		return "front_manager/job/default";
	}

	@RequestMapping(value = "/show/{id}")
	public String show(@PathVariable("id") String resumeId, HttpServletRequest request) {
		if (StringUtil.isNotBlank(resumeId)) {
			Integer uuid = Integer.parseInt(resumeId);
			Resume resume = resumeService.selectByPrimaryKey(uuid);
			request.setAttribute("resume", resume);
			return "qiuinfo";
		}

		return null;
	}

	@RequestMapping("/getresumes")
	public String getPageresumes(HttpServletRequest request) {
		List<Resume> resumesList = resumeService.getByConditionPage(new Resume());
		if (null != resumesList && resumesList.size() > 0) {
			request.setAttribute("resumesList", resumesList);
			return "qiu";
		}
		return null;
	}
}
