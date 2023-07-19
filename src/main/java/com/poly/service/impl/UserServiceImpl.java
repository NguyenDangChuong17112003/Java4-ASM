package com.poly.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.poly.constant.videoHrefConstant;
import com.poly.dao.UserDAO;
import com.poly.dao.impl.UserDAOImpl;
import com.poly.dto.UserDto;
import com.poly.entity.User;
import com.poly.service.UserService;

public class UserServiceImpl implements UserService {

	UserDAO dao;

	public UserServiceImpl() {
		dao = new UserDAOImpl();
	}

	@Override
	public User findByID(Integer id) {
		// TODO Auto-generated method stub
		return dao.findByID(id);
	}

	@Override
	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		return dao.findByEmail(email);
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return dao.findByUsername(username);
	}

	@Override
	public User resetPassword(String email) {
		// TODO Auto-generated method stub
		User existUser = findByEmail(email);
		if (existUser != null) {
			String newPass = String.valueOf((int)(Math.random() * ((9999 - 1000) + 1)) + 1000);
			existUser.setPassword(newPass);
			return dao.update(existUser);
			}
		return null;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public List<User> findAll(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return dao.findAll(pageNumber, pageSize);
	}

	@Override
	public User create(String username, String password, String email) {
		// TODO Auto-generated method stub
		User newUser = new User();
		newUser.setUsername(username);
		newUser.setPassword(password);
		newUser.setEmail(email);
		newUser.setIsAdmin(Boolean.FALSE);
		newUser.setActive(Boolean.TRUE);
		return dao.create(newUser);
	}

	@Override
	public User update(User entity) {
		// TODO Auto-generated method stub
		return dao.update(entity);
	}

	@Override
	public User delete(String username) {
		// TODO Auto-generated method stub
		User user = dao.findByUsername(username);
		user.setActive(Boolean.FALSE);
		return dao.update(user);
	}

	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		return dao.findByUsernameAndPassword(username, password);
	}

	@Override
	public List<UserDto> findUsersLikeByVideoHref(String href) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<>();
		params.put(videoHrefConstant.VIDEO_HREF, href);
		List<User> users =  dao.findUsersLikeByVideoHref(params);
		List<UserDto> result = new ArrayList<>();
		users.forEach(user -> {
			UserDto dto = new UserDto();
			dto.setEmail(user.getEmail());
			dto.setUsername(user.getUsername());
			result.add(dto);
		});
		return result;
	}

}
