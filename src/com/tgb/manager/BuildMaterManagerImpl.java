package com.tgb.manager;

import java.util.Date;
import java.util.List;

import com.tgb.dao.BuildMaterDao;
import com.tgb.entity.Build_mater;

public class BuildMaterManagerImpl implements BuildMaterManager {

	private BuildMaterDao buildMaterDao;
	
	public void setBuildMaterDao(BuildMaterDao buildMaterDao) {
		this.buildMaterDao = buildMaterDao;
	}
	
	@Override
	public List<Build_mater> getAllBuildMater(String name) {
		
		return buildMaterDao.getAllBuildMater(name);
	}

	@Override
	public Build_mater getBuildMater(String name) {
		return buildMaterDao.getBuildMater(name);
	}

	@Override
	public int getCount(String type, String name) {
		return buildMaterDao.getCount(type, name);
	}

	@Override
	public List<Build_mater> getSelect(int page, int order, String type, String name) {
		return buildMaterDao.getSelect(page, order, type, name);
	}

	@Override
	public List<Build_mater> getByType(String type) {
		return buildMaterDao.getByType(type);
	}

	@Override
	public List<Build_mater> getByPrice(float min, float max) {
		return buildMaterDao.getByPrice(min, max);
	}

	@Override
	public List<Build_mater> getByDate() {
		return buildMaterDao.getByDate();
	}
	
	@Override
	public List<Build_mater> getByDate2() {
		return buildMaterDao.getByDate2();
	}

	@Override
	public List<Build_mater> getSpecial() {
		return buildMaterDao.getSpecial();
	}

}
