package com.smiletalk.base.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public abstract class BaseServiceImpl implements BaseServiceInter {
    
	@Resource
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	// hql: pass hql, can have ?
	//parameters: ? is related to Object[]
	public List getResult(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
	    if(parameters!=null&&parameters.length>0){
	    	for(int i=0;i<parameters.length;i++){
	    		query.setParameter(i, parameters[i]);
	    	}
	    }
	    return query.list();
	}

	
	public void save(Object obj) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(obj);
	}

	
	public void delete(Object obj) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(obj);
	}

	
	public void update(Object obj) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(obj);
	}

}
