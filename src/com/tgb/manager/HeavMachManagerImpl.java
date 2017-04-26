package com.tgb.manager;

import java.util.List;

import com.tgb.dao.HeavMachDao;
import com.tgb.entity.Heav_mach;

public class HeavMachManagerImpl implements HeavMachManager {

	private HeavMachDao heavMachDao;
	
	public void setHeavMachDao(HeavMachDao heavMachDao) {
		this.heavMachDao = heavMachDao;
	}
	
	@Override
	public List<Heav_mach> getAllHeavMach(String name) {
		return heavMachDao.getAllHeavMach(name);
	}

	@Override
	public int getCount(String name) {
		return heavMachDao.getCount(name);
	}

	@Override
	public List<Heav_mach> getSelect(int page, String name) {
		return heavMachDao.getSelect(page, name);
	}

	@Override
	public Heav_mach getHeavMach(String name) {
		return heavMachDao.getHeavMach(name);
	}

	@Override
	public List<Heav_mach> getByDate() {
		return heavMachDao.getByDate();
	}
	
	@Override
	public List<Heav_mach> getByDate2() {
		return heavMachDao.getByDate2();
	}

	@Override
	public List<Heav_mach> getSpecial() {
		return heavMachDao.getSpecial();
	}

}
