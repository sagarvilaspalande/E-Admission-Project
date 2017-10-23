package com.mahasoft.support_system.role_access;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class RoleAccess{

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int role_access_id;
	
	private int role_id;
	private int control_access_id;
	private String role_access;
	private String status;
	private String br_code;
	private String created_by;
	private Date created_date;
	private String deleted_by;
	private Date deleted_date;	
	private String updated_by;
	private Date updated_date;
	
	public int getRole_access_id() {
		return role_access_id;
	}
	public void setRole_access_id(int role_access_id) {
		this.role_access_id = role_access_id;
	}
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public int getControl_access_id() {
		return control_access_id;
	}
	public void setControl_access_id(int control_access_id) {
		this.control_access_id = control_access_id;
	}
	public String getRole_access() {
		return role_access;
	}
	public void setRole_access(String role_access) {
		this.role_access = role_access;
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
}
