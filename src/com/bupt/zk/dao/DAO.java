package com.bupt.zk.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * @author ycsun E-mail:stevesun521@gmail.com
 * @version 创建时间：2013-7-22 下午9:44:50 类说明
 */
public abstract class DAO extends HibernateDaoSupport {
	public abstract List<Object> createQuery(String queryString);

	public abstract void save(Object obj);

	public abstract void delete(Object obj);

	public abstract void update(Object obj);
}
