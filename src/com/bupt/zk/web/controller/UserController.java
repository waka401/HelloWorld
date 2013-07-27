package com.bupt.zk.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bupt.zk.entity.User;
import com.bupt.zk.service.UserService;

/**
 * @author ycsun E-mail:stevesun521@gmail.com
 * @version 创建时间：2013-7-17 下午9:26:20 类说明
 */
@org.springframework.stereotype.Controller
@RequestMapping("/user")
public class UserController {
	protected final transient Log log = LogFactory.getLog(UserController.class);
	private static final String LOGIN_SUC = "loginSuc";
	private static final String LOGIN_FAIL = "loginFAiL";
	private static final String MAIN = "main";
	@Autowired
	private UserService userService;

	public UserController() {
	}

	@RequestMapping("/index")
	public String index() {
		return "main";
	}

	@RequestMapping("/regUser")
	public String regUser(HttpServletRequest request,
			HttpServletResponse response) {
		String username = request.getParameter("regUserName");
		System.out.println(username);
		String password = request.getParameter("regPassword");
		System.out.println(password);
		String email = request.getParameter("regEmail");
		int gender = Integer.parseInt(request.getParameter("regGender"));
		/********* 看出struts的好处，自动绑定表单 ********/
		User user = new User();
		user.setUserName(username);
		user.setPassWord(password);
		user.setEmail(email);
		user.setGender(gender);
		userService.regUser(user);
		return "main";
	}

	@RequestMapping("/loginUser")
	public String loginUser(HttpServletRequest request,
			HttpServletResponse response) {
		String username = request.getParameter("loginName");
		System.out.println(username);
		String password = request.getParameter("loginPassword");
		System.out.println(password);
		boolean isLogin = userService.isLogin(username, password);
		System.out.println(isLogin);
		if (isLogin) {
			return MAIN;
		}
		return MAIN;
	}
}
