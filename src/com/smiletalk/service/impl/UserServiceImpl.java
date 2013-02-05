package com.smiletalk.service.impl;

import java.util.List;

import com.smiletalk.base.service.BaseServiceImpl;
import com.smiletalk.domain.User;
import com.smiletalk.service.inter.UserServiceInter;

public class UserServiceImpl extends BaseServiceImpl implements
		UserServiceInter {

	@SuppressWarnings("unchecked")
	public User check(User user) {
		// TODO Auto-generated method stub

	    List<User> list= getResult("from User where email=? and pwd=?",new Object[]{user.getEmail(),user.getPwd()});
		if(list.size()==1){
		return list.get(0);
		}else{
		return null;
		}
	}

}
