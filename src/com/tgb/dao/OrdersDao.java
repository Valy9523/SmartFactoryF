package com.tgb.dao;

import java.util.List;

import com.tgb.entity.OrderCard;

public interface OrdersDao {
	    public void addOrder(OrderCard order,int userId);
	    
	    public List<OrderCard> getOrders(int userId);

		public int emptyOrder(int userId);
		
}
