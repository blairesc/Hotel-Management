package com.example.hotelmanagement.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hotelmanagement.dao.UserRepository;
import com.example.hotelmanagement.entity.User;


@Service
@Transactional
public class UserService {
	@Autowired
	private UserRepository userRepository;
	
	public UserService(UserRepository userRepo) {
		this.userRepository = userRepo;
	}
	
	public User findByUsernameAndPassword(String userName, String password) {
		return userRepository.findByUserNameAndPassword(userName, password);
	}
}
