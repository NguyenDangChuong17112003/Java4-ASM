package com.poly.service.impl;

import javax.servlet.ServletContext;

import com.poly.entity.User;
import com.poly.service.EmailService;
import com.poly.utils.EmailUtils;

public class EmailServiceImpl implements EmailService {

	private static final String EMAIL_SUBJECT = "Chào mừng bạn đến với trang Hoạt Hình 3D của Mr Huy";
	private static final String EMAIL_FORGOT_PASSWORD = "Thai Huy - New password";

	@Override
	public void sendMail(ServletContext context, User recipient, String type) {
		String host = context.getInitParameter("host");
		String port = context.getInitParameter("port");
		String user = context.getInitParameter("user");
		String pass = context.getInitParameter("pass");

		try {
			String content = null;
			String subject = null;
			switch (type) {
			case "register":
				subject = EMAIL_SUBJECT;
				content = "Ứng dụng xem phim lâu miễn phí xin gửi đến bạn " + recipient.getUsername()
						+ ", mong bạn trải nghiệm vui vẻ và cho 5 sao sương sương";
				break;
			case "forgot":
				subject = EMAIL_FORGOT_PASSWORD;
				content = "Gửi " + recipient.getUsername() + ", mật khẩu mới của bạn là: " + recipient.getPassword();
				break;
			default:
				subject = "HoatHinh3d";
				content = "Có sự nhầm lẫn khi bạn nhận được mail này, vui lòng thông cảm";
			}
			EmailUtils.sendEmail(host, port, user, pass, recipient.getEmail(),content, subject);
		} catch (Exception e) {

		}
	}

}
