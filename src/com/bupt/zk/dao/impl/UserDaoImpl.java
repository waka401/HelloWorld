package com.bupt.zk.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bupt.zk.dao.UserDao;
import com.bupt.zk.entity.User;
import com.sun.istack.internal.FinalArrayList;

/**
 * @author ycsun E-mail:stevesun521@gmail.com
 * @version 创建时间：2013-7-17 下午9:45:32 类说明
 */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public List<User> queryUserList() {
		return null;
		
	}

	@Override
	public List<User> queryUserList(int pagesize, int pagenum) {
		return null;
	
	}

	@Override
	public boolean save(final User user) {
		Object res = getHibernateTemplate().execute(
				new HibernateCallback<User>() {
					@Override
					public User doInHibernate(Session session)
							throws HibernateException, SQLException {
						session.save(user);
						return null;
					}

				});
		return true;
	}

	@Override
	public boolean delete(final int  userid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User getUserById(final int id) {
		User user=new User();
		user=getHibernateTemplate().execute(new HibernateCallback<User>() {
			@Override
			public User doInHibernate(Session session) throws HibernateException,
					SQLException {
				
				
				return null;
			}
		});
		return user;
	}

	@Override
	public User getUser(final String username,final String password) {
		User user=getHibernateTemplate().execute(new HibernateCallback<User>() {

			@Override
			public User doInHibernate(Session session) throws HibernateException,
					SQLException {
				Query query=session.createQuery("From User where username=:username and password=:password");
				query.setString("username", username);
				query.setString("password",password);
				return (User)query.uniqueResult();
			}
		});
		return user;
	}

}
