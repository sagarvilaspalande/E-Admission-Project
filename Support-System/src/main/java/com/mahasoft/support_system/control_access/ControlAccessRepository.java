package com.mahasoft.support_system.control_access;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ControlAccessRepository extends CrudRepository<ControlAccess, String>{

}
