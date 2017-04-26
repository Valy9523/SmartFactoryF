package com.tgb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.tgb.entity.Review;

public class ReviewDaoImpl implements ReviewDao {

    private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
    
	@Override
	public void addReview(Review review) {
      sessionFactory.getCurrentSession().save(review);
	}

	@Override
	public List<Review> getByPname(String pName) {
		String hql = "from Review r where r.purchaseName = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0, pName);
		return query.list();
	}

	
}
