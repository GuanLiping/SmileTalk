package com.smiletalk.service.inter;

import com.smiletalk.base.service.BaseServiceInter;
import com.smiletalk.domain.User;

public interface UserServiceInter extends BaseServiceInter {
  //check the user exit or not, if return null then not exit
	public User check(User user);
}
