package com.smiletalk.base.service;

import java.util.List;

public interface BaseServiceInter {

	// use one hql and parameter to complete task
	
	public List getResult(String hql, Object [] parameters);
	
	public void save(Object obj);
	
	public void delete(Object obj);
	
	public void update(Object obj);
}
