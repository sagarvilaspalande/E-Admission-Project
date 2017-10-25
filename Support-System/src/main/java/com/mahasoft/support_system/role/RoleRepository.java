package com.mahasoft.support_system.role;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends CrudRepository<Role, Integer>{

	public Role findByRoleid(int roleid);
}
