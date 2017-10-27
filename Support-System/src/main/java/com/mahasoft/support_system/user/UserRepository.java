package com.mahasoft.support_system.user;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, String>{
	public User findByUserid(int userid);
	public User findByUseremail(String useremail);
}
