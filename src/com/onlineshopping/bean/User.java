package com.onlineshopping.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="tbl_user")
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String userName;
	private String password;
	private Role role;//用户对角色，多对一，此处必须是Role类型，映射
	private String roleName;
	private String tel;
	private String email;
	private String address;
	
	public User(){
		
	}
	
	public User(Integer id, String userName, String password, Role role,
			String roleName, String tel, String email, String address) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.role = role;
		this.roleName = roleName;
		this.tel = tel;
		this.email = email;
		this.address = address;
	}
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@ManyToOne
	@JoinColumn(name="role")
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}