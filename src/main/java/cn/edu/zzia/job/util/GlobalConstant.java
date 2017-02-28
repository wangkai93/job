package cn.edu.zzia.job.util;

public class GlobalConstant {

	public static final String WEIXIN_TOKEN = "1q2w3e4r5t";
	
	public static final String EN_DE_CODE_KEY = "!q2w3e4r";

	// 获取微信access_token 的url
	public final static String access_token_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";
	// 获取微信js_api_ticket_url 的url
	public final static String js_api_ticket_url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=ACCESS_TOKEN&type=jsapi";
	//从微信服务器上获取媒体数据的url
	public final static String download_media_url = "http://file.api.weixin.qq.com/cgi-bin/media/get?access_token=ACCESS_TOKEN&media_id=MEDIA_ID";
	
	//服务器上存储图片的根路径
	public final static String  image_root_path = "/mydata/images/";
	public final static String  photo_path = "/mydata/static/photos/";

	public final static String appid = "wxc10c771477dfb003";
	public final static String appsecret = "1338d956dc7d7dcf46e7a8d3e15830fa";

	public final static String SUCCESS = "true";
	public final static String FAILED = "false";
}
