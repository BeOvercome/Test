package com.overcome.test.entity;

import java.util.Date;

import com.googlecode.objectify.annotation.Entity;

@Entity
public class TicketEntity extends BaseEntity {
	
	private String title;
	private Date date;
	private String owner_name;
	private int team; //0 support, 1 develpment, 2 customer
	private int type; //0 bug, 1 feature
	private int sverity; //0 low, 1 medium, 2 high
	private int status = 0;
	private String sotware_version;
	private String description;
	private FileItem[] files;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public int getTeam() {
		return team;
	}
	public void setTeam(int team) {
		this.team = team;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getSverity() {
		return sverity;
	}
	public void setSverity(int sverity) {
		this.sverity = sverity;
	}
	public String getSotware_version() {
		return sotware_version;
	}
	public void setSotware_version(String sotware_version) {
		this.sotware_version = sotware_version;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public FileItem[] getFiles() {
		return files;
	}
	public void setFiles(FileItem[] files) {
		this.files = files;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
