package com.onlineshopping.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_item_type")
public class ItemType implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer pid;
	private String typeName;
	private String note;

	public ItemType() {
	}

	public ItemType(Integer pid, String typeName) {
		this.pid = pid;
		this.typeName = typeName;
	}

	public ItemType(Integer pid, String typeName, String note) {
		this.pid = pid;
		this.typeName = typeName;
		this.note = note;
	}

	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(nullable = false)
	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
}