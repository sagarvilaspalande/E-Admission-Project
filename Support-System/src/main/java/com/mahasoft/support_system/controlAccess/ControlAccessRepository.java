package com.mahasoft.support_system.controlAccess;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mahasoft.support_system.role.Role;

@Repository
public interface ControlAccessRepository extends CrudRepository<ControlAccess, Integer>{

	public ControlAccess findByControlaccessid(int controlaccessid);
}
