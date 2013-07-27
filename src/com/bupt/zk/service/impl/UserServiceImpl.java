package com.bupt.zk.service.impl;

import org.hibernate.envers.Audited;
import org.springframework.beans.factory.annotation.Autowired;

import com.bupt.zk.dao.UserDao;
import com.bupt.zk.entity.User;
import com.bupt.zk.service.UserService;

/**
 * @author ycsun E-mail:stevesun521@gmail.com
 * @version 创建时间：2013-7-17 下午9:30:31 类说明
 */
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	

	@Override
	public boolean regUser(User user) {
		userDao.save(user);
		return false;
	}

	@Override
	public boolean deleteUser(int userId) {
		userDao.delete(userId);
		return false;
	}

	@Override
	public boolean updateUser(User user) {
		userDao.update(user);
		return false;
	}

	@Override
	public boolean isLogin(String username, String password) {
		boolean isLogin=false;
		if(userDao.getUser(username, password)!=null){
			isLogin=true;
		}
		return isLogin;
	}

}
