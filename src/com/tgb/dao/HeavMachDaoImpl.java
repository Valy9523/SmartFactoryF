package com.tgb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.tgb.entity.Heav_mach;

public class HeavMachDaoImpl implements HeavMachDao {
   
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Heav_mach> getAllHeavMach(String name) {
        
		String hql = "from Heav_mach h where h.Name like '%"+name+"%' ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return query.list();
	}

	@Override
	public int getCount(String name) {

		String hql = "select count(h) from Heav_mach h";
		
		
		if(name!=null&&!name.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			stringBuffer.append( " where h.Name like '%"+name+"%' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
	    
	   
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		
		return (Integer.parseInt(query.uniqueResult().toString()));
	
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Heav_mach> getSelect(int page, String name) {
		String hql = "from Heav_mach h order by h.Date desc";
		
		if(name!=null&&!name.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			int index = stringBuffer.indexOf("order");
			stringBuffer.insert(index," where h.Name like '%"+name+"%' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setFirstResult((page-1)*12);
		
		query.setMaxResults(12);
		
	    return query.list();
	}

	@Override
	public Heav_mach getHeavMach(String name) {
        String hql = " from Heav_mach h where h.Name=?";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setParameter(0, name);
		
		return (Heav_mach) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Heav_mach> getByDate() {
		String hql = "from Heav_mach h order by h.Date desc ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setMaxResults(3);
		
		return query.list();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Heav_mach> getByDate2() {
		String hql = "from Heav_mach h order by h.Date asc";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setMaxResults(3);
		
		return query.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Heav_mach> getSpecial() {
		String hql = "from Heav_mach h where h.Special = 1 order by h.Date desc";
		
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
        query.setMaxResults(3);
        
		return query.list();
	}
}
