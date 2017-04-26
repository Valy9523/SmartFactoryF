package com.tgb.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="order_card")
public class OrderCard {

	@Id
	@GeneratedValue(generator="system-increment")
	@GenericGenerator(name ="system-increment",strategy="uuid")
	private String id;
    
	private String name;
	
	private int quantity;

	private int checked;
	
	private float price;
	
	private String tableName;
	
	private String image;
	
	private int userId;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getChecked() {
		return checked;
	}

	public void setChecked(int checked) {
		this.checked = checked;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
    
	

	public OrderCard() {
		super();
	}

	public OrderCard(String name, int quantity, int checked, float price, String tableName, String image, int userId) {
		super();
		this.name = name;
		this.quantity = quantity;
		this.checked = checked;
		this.price = price;
		this.tableName = tableName;
		this.image = image;
		this.userId = userId;
	}
    
	
}