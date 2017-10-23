package com.mahasoft.support_system.role_access;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleAccessRepository extends CrudRepository<RoleAccess, String>{

}
