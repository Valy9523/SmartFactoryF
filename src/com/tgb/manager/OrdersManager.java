package com.tgb.manager;

import java.util.List;

import com.tgb.entity.OrderCard;

public interface OrdersManager {
    public void addOrder(OrderCard order,int userId);
    
    public List<OrderCard> getOrders(int userId);

	public int emptyOrder(int userId);
}
