package com.mahasoft.support_system.control_access;

import java.util.Date;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.ManyToMany;
import com.mahasoft.support_system.role.Role;

@Entity
public class ControlAccess{

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int control_access_id;
	private String control_access_type;
	private String status;
	private String br_code;
	private String created_by;
	private Date created_date;
	private String deleted_by;
	private Date deleted_date;	
	private String updated_by;
	private Date updated_date;
	
	/*@ManyToMany(mappedBy = "controlAccesses")
	private Set<Role> roles;*/
	
	/*public ControlAccess() {
		//super();
	}
	
	public ControlAccess(int control_access_id, String control_access_type, String status, String br_code,
			String created_by, Date created_date, String deleted_by, Date deleted_date, String updated_by,
			Date updated_date) {
		//super();
		this.control_access_id = control_access_id;
		this.control_access_type = control_access_type;
		this.status = status;
		this.br_code = br_code;
		this.created_by = created_by;
		this.created_date = created_date;
		this.deleted_by = deleted_by;
		this.deleted_date = deleted_date;
		this.updated_by = updated_by;
		this.updated_date = updated_date;
	}
	
	public ControlAccess(int control_access_id, String control_access_type, String status, String br_code,
			String created_by, Date created_date, String deleted_by, Date deleted_date, String updated_by,
			Date updated_date, Set<Role> roles) {
		//super();
		this.control_access_id = control_access_id;
		this.control_access_type = control_access_type;
		this.status = status;
		this.br_code = br_code;
		this.created_by = created_by;
		this.created_date = created_date;
		this.deleted_by = deleted_by;
		this.deleted_date = deleted_date;
		this.updated_by = updated_by;
		this.updated_date = updated_date;
		this.roles = roles;
	}*/

	public int getControl_access_id() {
		return control_access_id;
	}
	public void setControl_access_id(int control_access_id) {
		this.control_access_id = control_access_id;
	}
	public String getControl_access_type() {
		return control_access_type;
	}
	public void setControl_access_type(String control_access_type) {
		this.control_access_type = control_access_type;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBr_code() {
		return br_code;
	}
	public void setBr_code(String br_code) {
		this.br_code = br_code;
	}
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public Date getCreated_date() {
		return created_date;
	}
	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	public String getDeleted_by() {
		return deleted_by;
	}
	public void setDeleted_by(String deleted_by) {
		this.deleted_by = deleted_by;
	}
	public Date getDeleted_date() {
		return deleted_date;
	}
	public void setDeleted_date(Date deleted_date) {
		this.deleted_date = deleted_date;
	}
	public String getUpdated_by() {
		return updated_by;
	}
	public void setUpdated_by(String updated_by) {
		this.updated_by = updated_by;
	}
	public Date getUpdated_date() {
		return updated_date;
	}
	public void setUpdated_date(Date updated_date) {
		this.updated_date = updated_date;
	}
	/*public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}*/
}
