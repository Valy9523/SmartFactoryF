package com.tgb.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

public class SurveyDaoImpl implements SurveyDao {

	
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public int update(int id) {
    String hql = "update Survey s set s.count = s.count+1 where s.id = "+id;
    Query query = sessionFactory.getCurrentSession().createQuery(hql);
    int update=query.executeUpdate();
    return update;
	}

	@Override
	public int getCount(int id) {
		String hql = "select s.count from Survey s where s.id = "+id;
	    Query query = sessionFactory.getCurrentSession().createQuery(hql);
	    return Integer.parseInt(query.uniqueResult().toString());
	}

}
