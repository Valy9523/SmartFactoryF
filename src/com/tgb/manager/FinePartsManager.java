package com.tgb.manager;

import java.util.List;

import com.tgb.entity.Fine_parts;

public interface FinePartsManager {
	   public List<Fine_parts> getAllFineParts(String name);
	   
	   public int getCount(String name);
	   
	   public List<Fine_parts> getSelect(int page,String name);
	   
	   public Fine_parts getFineParts(String name);
	   
	   public List<Fine_parts> getByDate();
	   
	   public List<Fine_parts> getByDate2();
	   
	   public List<Fine_parts> getSpecial();
}
