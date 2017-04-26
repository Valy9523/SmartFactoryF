package com.tgb.manager;

import java.util.List;

import com.tgb.dao.FinePartsDao;
import com.tgb.entity.Fine_parts;

public class FinePartsManagerImpl implements FinePartsManager {

	private FinePartsDao finePartsDao;
	
	public void setFinePartsDao(FinePartsDao finePartsDao) {
		this.finePartsDao = finePartsDao;
	}
	
	@Override
	public List<Fine_parts> getAllFineParts(String name) {
		return finePartsDao.getAllFineParts(name);
	}

	@Override
	public int getCount(String name) {
		return finePartsDao.getCount(name);
	}

	@Override
	public List<Fine_parts> getSelect(int page, String name) {
		return finePartsDao.getSelect(page, name);
	}

	@Override
	public Fine_parts getFineParts(String name) {
		return finePartsDao.getFineParts(name);
	}

	@Override
	public List<Fine_parts> getByDate() {
		return finePartsDao.getByDate();
	}
	
	@Override
	public List<Fine_parts> getByDate2() {
		return finePartsDao.getByDate2();
	}

	@Override
	public List<Fine_parts> getSpecial() {
		return finePartsDao.getSpecial();
	}

}
