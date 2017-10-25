package com.mahasoft.support_system.roleAccess;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.ManyToOne;

import com.mahasoft.support_system.controlAccess.ControlAccess;
import com.mahasoft.support_system.role.Role;

@Entity
public class RoleAccess{

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int roleaccessid;
	
	private int roleid;	
	
	@ManyToOne
	private Role role;
	
	private int controlaccessid;
	
	@ManyToOne
	private ControlAccess controlAccess;
	
	//private String roleAccess;
	private String brCode;
	private String status;
	private String createdBy;
	private Date createdDate;	
	private String deletedBy;
	private Date deletedDate;	
	private String updatedBy;
	private Date updatedDate;
	
	public int getRoleaccessid() {
		return roleaccessid;
	}
	public void setRoleaccessid(int roleaccessid) {
		this.roleaccessid = roleaccessid;
	}
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public int getControlaccessid() {
		return controlaccessid;
	}
	public void setControlaccessid(int controlaccessid) {
		this.controlaccessid = controlaccessid;
	}
	public ControlAccess getControlAccess() {
		return controlAccess;
	}
	public void setControlAccess(ControlAccess controlAccess) {
		this.controlAccess = controlAccess;
	}
	public String getBrCode() {
		return brCode;
	}
	public void setBrCode(String brCode) {
		this.brCode = brCode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public String getDeletedBy() {
		return deletedBy;
	}
	public void setDeletedBy(String deletedBy) {
		this.deletedBy = deletedBy;
	}
	public Date getDeletedDate() {
		return deletedDate;
	}
	public void setDeletedDate(Date deletedDate) {
		this.deletedDate = deletedDate;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	public Date getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}		
}
