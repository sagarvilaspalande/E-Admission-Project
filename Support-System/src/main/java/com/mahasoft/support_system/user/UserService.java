package com.mahasoft.support_system.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	UserRepository userRepository;
	
	public List<User> getAllUsers(){
		return (List<User>) userRepository.findAll();
	}
	
	public void addUser(User user){
		userRepository.save(user);
	}
	
	public void updateUser(User user) {
		userRepository.save(user);		
	}

	public void deleteUser(User user) {
		userRepository.delete(user);
	}
}
