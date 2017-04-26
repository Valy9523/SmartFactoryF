package com.tgb.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.tgb.entity.Elec_device;

public class ElecDeviceDaoImpl implements ElecDeviceDao {

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Elec_device> getAllElecDevice(String name) {
		String hql = "from Elec_device e where e.Name like '%"+name+"%' ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return query.list();
	}

	@Override
	public Elec_device getElecDevice(String name) {
		String hql = "from Elec_device e where e.Name=?";
		
		Query query =sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setParameter(0, name);
		
		return (Elec_device) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Elec_device> getByType(String type) {
		String hql = "from Elec_device e where e.Type=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0, type);
		return query.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Elec_device> getByPrice(float min, float max) {
		String hql = "from Elec_device e where e.Price between ? and ?";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setParameter(0, min);
		
		query.setParameter(1, max);
		
		return query.list();
	}


	@Override
	public int getCount(String type,String name) {
		String hql = "select count(e) from Elec_device e";
		if ((type!=null&&!type.equals(""))&&(name!=null&&!name.equals(""))) {
			StringBuffer stringBuffer = new StringBuffer(hql);
			stringBuffer.append( " where e.Type='"+type+"' ");
			stringBuffer.append(" and e.Name like '%"+name+"%' ");
			hql=stringBuffer.toString();
		}
		else if(type!=null&&!type.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			stringBuffer.append( " where e.Type='"+type+"' ");
			hql=stringBuffer.toString();
		}
		else if(name!=null&&!name.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			stringBuffer.append( " where e.Name like '%"+name+"%' ");
			hql=stringBuffer.toString();
		}
	    
	   
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		
		return Integer.parseInt( query.uniqueResult().toString());
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Elec_device> getSelect(int page,int order,String type,String name) {
		String hql = null;
		Query query = null;
		switch (order) {
		case 1:
			hql ="from Elec_device e order by e.Date desc";
			break;
		case 2:
			hql ="from Elec_device e order by e.Name asc";
			break;
		case 3:
			hql ="from Elec_device e order by e.Name desc";
			break;
		case 4:
			hql ="from Elec_device e order by e.Price desc";
			break;
		case 5:
			hql ="from Elec_device e order by e.Price asc";
			break;
		case 6:
			hql ="from Elec_device e order by e.Date desc";
			break;
		case 7:
			hql ="from Elec_device e order by e.Date asc";
			break;
		default:
			hql ="from Elec_device e order by e.Date desc";
			break;
		}
		if ((type!=null&&!type.equals(""))&&(name!=null&&!name.equals(""))) {
			StringBuffer stringBuffer = new StringBuffer(hql);
			int index = stringBuffer.indexOf("order");
			stringBuffer.insert(index, " where e.Type='"+type+"' ");
			index=stringBuffer.indexOf("order");
			stringBuffer.insert(index, " and e.Name like '%"+name+"%' ");
			hql=stringBuffer.toString();
		}
		else if(type!=null&&!type.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			int index = stringBuffer.indexOf("order");
			stringBuffer.insert(index, " where e.Type='"+type+"' ");
			hql=stringBuffer.toString();
		}
		else if(name!=null&&!name.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			int index = stringBuffer.indexOf("order");
			stringBuffer.insert(index, " where e.Name like '%"+name+"%' ");
			hql=stringBuffer.toString();
		}
	    
	   
		query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setFirstResult((page - 1) * 11);
		
		query.setMaxResults(11);
		
		return query.list();
	}
	
	
	@Override
	public List<Elec_device> getByDate() {
		String hql = "from Elec_device e order by e.Date desc ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setMaxResults(3);
		
		return query.list();
	}

	@Override
	public List<Elec_device> getSpecial() {
		String hql = "from Elec_device e where e.Special = 1 order by e.Date desc";
		
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
        query.setMaxResults(3);
		
        return query.list();
	}

	@Override
	public List<Elec_device> getByDate2() {
        String hql = "from Elec_device e order by e.Date asc ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setMaxResults(3);
		
		return query.list();
	}

}
