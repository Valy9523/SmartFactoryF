package com.tgb.dao;

import java.util.List;

import com.tgb.entity.Review;

public interface ReviewDao {

	public void addReview(Review review);
	
	public List<Review> getByPname(String pName);
	
}
