package com.tgb.manager;

import java.util.List;

import com.tgb.entity.Heav_mach;

public interface HeavMachManager {

	   public List<Heav_mach> getAllHeavMach(String name);
	   
	   public int getCount(String name);
	   
	   public List<Heav_mach> getSelect(int page,String name);
	   
	   public Heav_mach getHeavMach(String name);
	
	   public List<Heav_mach> getByDate();
	   
	   public List<Heav_mach> getByDate2();
	   
	   public List<Heav_mach> getSpecial();
}
