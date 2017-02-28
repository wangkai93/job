package cn.edu.zzia.job.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.zzia.job.domain.News;
import cn.edu.zzia.job.service.INewsService;
import cn.edu.zzia.job.util.StringUtil;

@Controller
@RequestMapping("/news")
public class NewsController {

	
	@Resource(name = INewsService.SERVICE_NAME)
	private INewsService newsService = null;

	
	@RequestMapping(value="/show/{id}")
	public String show(@PathVariable("id")String newsId,HttpServletRequest request){
		if(StringUtil.isNotBlank(newsId)){
			Integer uuid = Integer.parseInt(newsId);
			News news = newsService.selectByPrimaryKey(uuid);
			request.setAttribute("news", news);
			return "newsinfo";
		}
		
		return null;
	}
	
	@RequestMapping("/getnews")
	public String getPageNews(HttpServletRequest request){
		List<News> newsList = newsService.getByConditionPage(new News());
		if(null != newsList && newsList.size() > 0){
			request.setAttribute("newsList", newsList);
			return "news";
		}
		return null;
	}
}
