package com.mahasoft.support_system.controlAccess;

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
	private int controlaccessid;
	
	private String controlaccesstype;
	private String brCode;
	private String status;
	private String createdBy;
	private Date createdDate;	
	private String deletedBy;
	private Date deletedDate;	
	private String updatedBy;
	private Date updatedDate;
	
	public int getControlaccessid() {
		return controlaccessid;
	}
	public void setControlaccessid(int controlaccessid) {
		this.controlaccessid = controlaccessid;
	}
	public String getControlaccesstype() {
		return controlaccesstype;
	}
	public void setControlaccesstype(String controlaccesstype) {
		this.controlaccesstype = controlaccesstype;
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
