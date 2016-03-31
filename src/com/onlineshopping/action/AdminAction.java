package com.onlineshopping.action;

import org.apache.struts2.ServletActionContext;

import com.onlineshopping.bean.User;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Override //后台操作权限控制
	public String execute() throws Exception {
		System.err.println("adminAction test in!!!");
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		if (user == null || user.getRole().getId() == 2) {
			System.err.println("adminAction conditon in!!!");
			return ERROR;
		}
		return SUCCESS;
	}
}