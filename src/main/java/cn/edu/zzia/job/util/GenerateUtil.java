package cn.edu.zzia.job.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Date;
import java.util.UUID;

public class GenerateUtil {

	public static String create_nonce_str() {
		return UUID.randomUUID().toString();
	}

	public static String create_timestamp() {
		return Long.toString(System.currentTimeMillis() / 1000);
	}

	public static boolean generateHtmlFile(String filePath, String HtmlFile, String[] imageNames, String comment,
			String thumbnail, String studentImage, String lessonId, Integer studentId) {
		StringBuilder str = new StringBuilder("");
		try {
			String tempStr = "";
			FileInputStream is = new FileInputStream(filePath);// 读取模块文件
			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			while ((tempStr = br.readLine()) != null)
				str.append(tempStr);
			is.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		try {

			String htmlStr = str.toString();
			// 新模板不需要学生的头像
//			if (null != studentImage && !studentImage.trim().equals(""))
//				htmlStr = htmlStr.replace("{{icon}}", "/wonder" + studentImage);

			// 替换图片的占位符
			for (int i = 0; i < imageNames.length; i++) {
				htmlStr = htmlStr.replace("{{templateImage"+(i+1)+""+(i+1)+"}}", "/wonder" + imageNames[i]);
			}
			// 替换评论的占位符
			htmlStr = htmlStr.replace("###comment###", comment);

			// 增加点击查看这个节课所有照片的连接
			htmlStr = htmlStr.replace("<div id=\"onclick\"", "<body onclick='lookAllImages()'>");
			htmlStr = htmlStr.replace("</body>",
					"</body><script type=\"text/javascript\"> "
					+ "function lookAllImages()	{	"
					+ "	window.location.href = '/wonder/image/getLessonImage/"+lessonId+"/"+studentId+"';"
					+ "	}</script>");
			File f = new File(HtmlFile);
			if (!f.getParentFile().exists())
				f.getParentFile().mkdirs();
			OutputStream out = new FileOutputStream(f);
			BufferedWriter rd = new BufferedWriter(new OutputStreamWriter(out, "utf-8"));
			rd.write(htmlStr);
			rd.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
