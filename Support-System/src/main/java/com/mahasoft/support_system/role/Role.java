package com.mahasoft.support_system.role;

import java.util.Date;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import com.mahasoft.support_system.control_access.ControlAccess;

@Entity
public class Role {

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int role_id;
	private String role;
	private String status;
	private String br_code;
	private String created_by;
	private Date created_date;
	private String deleted_by;
	private Date deleted_date;	
	private String updated_by;
	private Date updated_date;
	
	/*@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name="role_access", joinColumns = @JoinColumn(name = "role_id", referencedColumnName = "role_id"),
	 inverseJoinColumns = @JoinColumn(name = "control_access_id", referencedColumnName = "control_access_id"))
	private Set<ControlAccess> controlAccesses;*/
	
	/*public Role() {
		
	}
		
	public Role(int role_id, String role, String status, String br_code, String created_by, Date created_date,
			String deleted_by, Date deleted_date, String updated_by, Date updated_date) {
		//super();
		this.role_id = role_id;
		this.role = role;
		this.status = status;
		this.br_code = br_code;
		this.created_by = created_by;
		this.created_date = created_date;
		this.deleted_by = deleted_by;
		this.deleted_date = deleted_date;
		this.updated_by = updated_by;
		this.updated_date = updated_date;
	}

	public Role(int role_id, String role, String status, String br_code, String created_by, Date created_date,
			String deleted_by, Date deleted_date, String updated_by, Date updated_date,
			Set<ControlAccess> controlAccesses) {
		//super();
		this.role_id = role_id;
		this.role = role;
		this.status = status;
		this.br_code = br_code;
		this.created_by = created_by;
		this.created_date = created_date;
		this.deleted_by = deleted_by;
		this.deleted_date = deleted_date;
		this.updated_by = updated_by;
		this.updated_date = updated_date;
		this.controlAccesses = controlAccesses;
	}*/

	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
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
	/*public Set<ControlAccess> getControlAccesses() {
		return controlAccesses;
	}
	public void setControlAccesses(Set<ControlAccess> controlAccesses) {
		this.controlAccesses = controlAccesses;
	}*/
}
