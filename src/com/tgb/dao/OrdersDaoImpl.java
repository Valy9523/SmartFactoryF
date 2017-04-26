package com.tgb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.tgb.entity.OrderCard;

public class OrdersDaoImpl implements OrdersDao {
    
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addOrder(OrderCard order,int userId) {
	String  oName = order.getName();
    String hql = "from OrderCard o where o.name = '" + oName+" ' and o.userId="+userId;
    Query query = sessionFactory.getCurrentSession().createQuery(hql);
    OrderCard orderCard=(OrderCard)query.uniqueResult();
    if (orderCard!=null) {
    String uuId = orderCard.getId();
	String hql2 = "update OrderCard o set o.quantity=o.quantity+1 where o.id= '"+uuId+" '";
	Query query2 = sessionFactory.getCurrentSession().createQuery(hql2);
	query2.executeUpdate();
    }
    else{
    	sessionFactory.getCurrentSession().save(order);
    }
	}

	@Override
	public List<OrderCard> getOrders(int userId) {
		String hql = "from OrderCard o where o.userId = ? and o.checked = 0";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0, userId);
		return query.list();
	}

	@Override
	public int emptyOrder(int userId) {
		String hql = "delete OrderCard o where o.userId = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0, userId);
		return query.executeUpdate();
	}

}
