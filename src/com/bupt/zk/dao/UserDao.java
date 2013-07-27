package com.bupt.zk.dao;

import java.util.List;

import com.bupt.zk.entity.User;
import com.sun.accessibility.internal.resources.accessibility;
import com.sun.istack.internal.FinalArrayList;

/**
 * @author ycsun E-mail:stevesun521@gmail.com
 * @version 创建时间：2013-7-17 下午9:32:52 类说明
 */
public interface UserDao {

	public abstract List<User> queryUserList();

	public abstract List<User> queryUserList(int pagesize, int pagenum);

	public abstract boolean save(final User user);

	public abstract boolean delete(final int userid);

	public abstract boolean update(User user);

	public abstract User getUserById(final int id);
	
	public abstract User getUser(String username,String password);
}
