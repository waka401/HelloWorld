package com.bupt.zk.service;

import com.bupt.zk.entity.User;

/**
 * @author ycsun E-mail:stevesun521@gmail.com
 * @version 创建时间：2013-7-17 下午9:28:15 类说明
 */
public interface UserService {
	public abstract boolean isLogin(String username,String password);

	public abstract boolean regUser(User user);

	public abstract boolean deleteUser(int userId);

	public abstract boolean updateUser(User user);
}
