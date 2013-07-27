package com.bupt.zk.service;

import com.bupt.zk.entity.ZkNode;

/**
 * @author ycsun E-mail:stevesun521@gmail.com
 * @version 创建时间：2013-7-4 下午10:49:37 类说明
 */
public interface ZkOperator {

	public boolean updateNodeInfo();

	public boolean deleteNode();

	public boolean addNode();

	public ZkNode findNode(String nodeinfo);
}
