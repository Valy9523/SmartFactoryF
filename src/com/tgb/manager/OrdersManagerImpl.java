package com.tgb.manager;

import java.util.List;

import com.tgb.dao.OrdersDao;
import com.tgb.entity.OrderCard;

public class OrdersManagerImpl implements OrdersManager {

	private OrdersDao ordersDao;
	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}
	@Override
	public void addOrder(OrderCard order,int userId) {
		ordersDao.addOrder(order,userId);
	}

	@Override
	public List<OrderCard> getOrders(int userId) {
		return ordersDao.getOrders(userId);
	}
	@Override
	public int emptyOrder(int userId) {
		return ordersDao.emptyOrder(userId);
	}
	
	
}

	
