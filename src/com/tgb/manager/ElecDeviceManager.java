package com.tgb.manager;

import java.util.Date;
import java.util.List;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

import com.tgb.entity.Elec_device;

public interface ElecDeviceManager {
   public List<Elec_device> getAllElecDevice(String name);
   
   public Elec_device getElecDevice(String name);
   
   public int getCount(String type,String name);
   
   public List<Elec_device> getSelect(int page,int order,String type,String name);
   
   public List<Elec_device> getByType(String type);
   
   public List<Elec_device> getByPrice(float min,float max);
   
   public List<Elec_device> getByDate();
   
   public List<Elec_device> getByDate2();
   
   public List<Elec_device> getSpecial();

   
   
}
