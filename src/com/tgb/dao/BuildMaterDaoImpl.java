package com.tgb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import com.tgb.entity.Build_mater;

public class BuildMaterDaoImpl implements BuildMaterDao{

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Build_mater> getAllBuildMater(String name) {
		String hql = "from Build_mater b where b.Name like '%"+name+"%' ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return query.list();
	}

	@Override
	public int getCount(String type, String name) {
		String hql = "select count(b) from Build_mater b";
		if ((type!=null&&!type.equals(""))&&(name!=null&&!name.equals(""))) {
			StringBuffer stringBuffer = new StringBuffer(hql);
			stringBuffer.append( " where b.Type='"+type+"' ");
			stringBuffer.append(" and b.Name like '%"+name+"%' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
		else if(type!=null&&!type.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			stringBuffer.append( " where b.Type='"+type+"' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
		else if(name!=null&&!name.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			stringBuffer.append( " where b.Name like '%"+name+"%' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
	    
	   
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		
		return Integer.parseInt( query.uniqueResult().toString());
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Build_mater> getSelect(int page, int order, String type, String name) {
		String hql = null;
		Query query = null;
		switch (order) {
		case 1:
			hql ="from Build_mater b order by b.Date desc";
			break;
		case 2:
			hql ="from Build_mater b order by b.Name asc";
			break;
		case 3:
			hql ="from Build_mater b order by b.Name desc";
			break;
		case 4:
			hql ="from Build_mater b order by b.Price desc";
			break;
		case 5:
			hql ="from Build_mater b order by b.Price asc";
			break;
		case 6:
			hql ="from Build_mater b order by b.Date desc";
			break;
		case 7:
			hql ="from Build_mater b order by b.Date asc";
			break;
		default:
			hql ="from Build_mater b order by b.Date desc";
			break;
		}
		if ((type!=null&&!type.equals(""))&&(name!=null&&!name.equals(""))) {
			StringBuffer stringBuffer = new StringBuffer(hql);
			int index = stringBuffer.indexOf("order");
			stringBuffer.insert(index, " where b.Type='"+type+"' ");
			index=stringBuffer.indexOf("order");
			stringBuffer.insert(index, " and b.Name like '%"+name+"%' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
		else if(type!=null&&!type.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			int index = stringBuffer.indexOf("order");
			stringBuffer.insert(index, " where b.Type='"+type+"' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
		else if(name!=null&&!name.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			int index = stringBuffer.indexOf("order");
			stringBuffer.insert(index, " where b.Name like '%"+name+"%' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
	    
	   
		query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setFirstResult((page - 1) * 11);
		
		query.setMaxResults(11);
		
		return query.list();
	}

	@Override
	public Build_mater getBuildMater(String name) {
		String hql = "from Build_mater b where b.Name=?";
		
		Query query =sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setParameter(0, name);
		
		return (Build_mater) query.uniqueResult();
	}

	@Override
	public List<Build_mater> getByType(String type) {
		return null;
	}

	@Override
	public List<Build_mater> getByPrice(float min, float max) {
		return null;
	}

	@Override
	public List<Build_mater> getByDate() {
		String hql = "from Build_mater b order by b.Date desc ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setMaxResults(3);
		
		return query.list();
	}

	@Override
	public List<Build_mater> getSpecial() {
		String hql = "from Build_mater b where b.Special = 1 order by b.Date desc";
		
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
        query.setMaxResults(3);
		
        return query.list();
	}

	@Override
	public List<Build_mater> getByDate2() {
	    
		String hql = "from Build_mater b order by b.Date asc ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setMaxResults(3);
		
		return query.list();
	}

}
