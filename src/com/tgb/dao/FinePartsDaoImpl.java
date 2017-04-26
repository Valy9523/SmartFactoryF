package com.tgb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.tgb.entity.Elec_device;
import com.tgb.entity.Fine_parts;

public class FinePartsDaoImpl implements FinePartsDao {
    private SessionFactory sessionFactory;
   
    public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Fine_parts> getAllFineParts(String name) {
        
		String hql = "from Fine_parts f where f.Name like '%"+name+"%' ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return query.list();
	}

	@Override
	public int getCount(String name) {

		String hql = "select count(f) from Fine_parts f";
		
		
		if(name!=null&&!name.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			stringBuffer.append( " where f.Name like '%"+name+"%' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
	    
	   
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		
		return Integer.parseInt( query.uniqueResult().toString());
	
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Fine_parts> getSelect(int page, String name) {
		String hql = "from Fine_parts f order by f.Date desc ";
		
		if(name!=null&&!name.equals("")){
			StringBuffer stringBuffer = new StringBuffer(hql);
			int index = stringBuffer.indexOf("order");
			stringBuffer.insert(index," where f.Name like '%"+name+"%' ");
			System.out.println(stringBuffer);
			hql=stringBuffer.toString();
		}
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setFirstResult((page-1)*12);
		
		query.setMaxResults(12);
		
	    return query.list();
	}

	@Override
	public Fine_parts getFineParts(String name) {
        String hql = " from Fine_parts f where f.Name=?";
		
        Query query =sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setParameter(0, name);
		
		return (Fine_parts) query.uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Fine_parts> getByDate() {
		String hql = "from Fine_parts f order by f.Date desc ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setMaxResults(3);
		
		return query.list();
	}
	
	@Override
	public List<Fine_parts> getByDate2() {
		String hql = "from Fine_parts f order by f.Date asc ";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setMaxResults(3);
		
		return query.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Fine_parts> getSpecial() {
		String hql = "from Fine_parts f where f.Special = 1 order by f.Date desc ";
		
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
      
        query.setMaxResults(3);
		
        return query.list();
	}


}
