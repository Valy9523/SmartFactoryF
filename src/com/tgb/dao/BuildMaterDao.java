package com.tgb.dao;

import java.util.Date;
import java.util.List;

import com.tgb.entity.Build_mater;

public interface BuildMaterDao {



	   public List<Build_mater> getAllBuildMater(String name);
	   
	   public int getCount(String type,String name);
	   
	   public List<Build_mater> getSelect(int page,int order,String type,String name);
	   
	   public Build_mater getBuildMater(String name);
	   
	   public List<Build_mater> getByType(String type);
	   
	   public List<Build_mater> getByPrice(float min,float max);
	   
	   public List<Build_mater> getByDate();
	   
	   public List<Build_mater> getByDate2();
	   
	   public List<Build_mater> getSpecial();

}
