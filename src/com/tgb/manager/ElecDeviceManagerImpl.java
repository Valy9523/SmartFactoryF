package com.tgb.manager;

import java.util.Date;
import java.util.List;

import com.tgb.dao.ElecDeviceDao;
import com.tgb.entity.Elec_device;

public class ElecDeviceManagerImpl implements ElecDeviceManager {

	private ElecDeviceDao elecDeviceDao;
	
	public void setElecDeviceDao(ElecDeviceDao elecDeviceDao) {
		this.elecDeviceDao = elecDeviceDao;
	}
	
	@Override
	public List<Elec_device> getAllElecDevice(String name) {
		return elecDeviceDao.getAllElecDevice(name);
	}

	@Override
	public Elec_device getElecDevice(String name) {
		return elecDeviceDao.getElecDevice(name);
	}

	@Override
	public List<Elec_device> getByType(String type) {
		return elecDeviceDao.getByType(type);
	}

	@Override
	public List<Elec_device> getByPrice(float min, float max) {
		return getByPrice(min, max);
	}

	@Override
	public List<Elec_device> getByDate() {
		return elecDeviceDao.getByDate();
	}
	
	@Override
	public List<Elec_device> getByDate2() {
		return elecDeviceDao.getByDate2();
	}


	@Override
	public int getCount(String type,String name) {
		return elecDeviceDao.getCount(type,name);
	}

	@Override
	public List<Elec_device> getSelect(int page,int addtion,String type,String name) {
		return elecDeviceDao.getSelect(page,addtion,type,name);
	}

	@Override
	public List<Elec_device> getSpecial() {
		return elecDeviceDao.getSpecial();
	}

	

	

}
