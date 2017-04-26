package com.tgb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="review")
public class Review {
    
	@Id
	@GeneratedValue(generator="sys-increment")
	@GenericGenerator(name="sys-increment",strategy="increment")
	@Column(name="reviewId")
	private int reviewId;
	
	private String purchaseName;
	
	private String reviewName;
	
	private String reviewEmail;
	
	private String reviewContent;

	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public String getPurchaseName() {
		return purchaseName;
	}

	public void setPurchaseName(String purchaseName) {
		this.purchaseName = purchaseName;
	}

	public String getReviewName() {
		return reviewName;
	}

	public void setReviewName(String reviewName) {
		this.reviewName = reviewName;
	}

	public String getReviewEmail() {
		return reviewEmail;
	}

	public void setReviewEmail(String reviewEmail) {
		this.reviewEmail = reviewEmail;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
   
	public Review() {
		super();
	}

	public Review(String purchaseName, String reviewName, String reviewEmail, String reviewContent) {
		super();
		this.purchaseName = purchaseName;
		this.reviewName = reviewName;
		this.reviewEmail = reviewEmail;
		this.reviewContent = reviewContent;
	}
	
	
}
