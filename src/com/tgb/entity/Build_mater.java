package com.tgb.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="build_mater")
public class Build_mater {
    @Id
    @GeneratedValue(generator="system-increment")
	@GenericGenerator(name ="system-increment",strategy="increment")
	private int Id;
    
    private String Name;
    
    private String Type;
    
    private float Price;
    
    private String Path1;
    
    private Date Date;
    
    private int Special;
    
    private float DelPrice;
    
    private String description;
    
    private String table;
    
    public int getId() {
		return Id;
	}

	public void setId(int id) {
		this.Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		this.Name = name;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		this.Type = type;
	}

	public float getPrice() {
		return Price;
	}

	public void setPrice(float price) {
		this.Price = price;
	}

	public String getPath1() {
		return Path1;
	}

	public void setPath1(String path1) {
		this.Path1 = path1;
	}

	public Date getDate() {
		return Date;
	}

	public void setDate(Date date) {
		this.Date = date;
	}

	public int getSpecial() {
		return Special;
	}

	public void setSpecial(int special) {
		this.Special = special;
	}

	public float getDelPrice() {
		return DelPrice;
	}

	public void setDelPrice(float delPrice) {
		this.DelPrice = delPrice;
	}


	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTable() {
		return table;
	}

	public void setTable(String table) {
		this.table = table;
	}

	
	
}
