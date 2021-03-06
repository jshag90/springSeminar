package com.jsh.portfolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsh.portfolio.dto.User;
import com.jsh.portfolio.dto.UserInfo;
import com.jsh.portfolio.mapper.UsersMapper;

@Service("userManagerService")
public class UserManagerServiceImpl implements UserManagerService {

	@Autowired
	UsersMapper usersMapper;

	@Override
	public ArrayList<User> userList() {
		ArrayList<User> result = new ArrayList<User>();

		result = usersMapper.userList();
		return result;

	}

	@Override
	public void userManagerDeletebyBId(long id) {

		usersMapper.userManagerDeleteById(id);

	}

	@Override
	public void userManagerIsAdminUpdateById(User user) {
		usersMapper.userManagerIsAdminUpdateById(user);

	}

	@Override
	public ArrayList<UserInfo> userInfoList() {
		ArrayList<UserInfo> userInfoResult = new ArrayList<UserInfo>();
		userInfoResult = usersMapper.userInfoList();
		return userInfoResult;
	}

	@Override
	public void userInfoManagerDeleteByInfoId(long infoId) {
		usersMapper.userInfoManagerDeleteByInfoId(infoId);

	}

}
