package com.onlineshopping.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.onlineshopping.bean.User;
import com.onlineshopping.service.UserService;
import com.onlineshopping.util.VerifyCode;

public class UserAction extends AdminAction {

	private static final long serialVersionUID = 1L;
	private String userName;
	private String password;
	private String verify;
	private Integer id;
	private UserService userService;
	private List<?> userList;
	private List<?> buyerList;
	private User user;
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
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify = verify;
	}
	
	public Integer getId() {
		return id;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public List<?> getUserList() {
		return userList;
	}
	public void setUserList(List<?> userList) {
		this.userList = userList;
	}
	public List<?> getBuyerList() {
		return buyerList;
	}
	public void setBuyerList(List<?> buyerList) {
		this.buyerList = buyerList;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public String isValid() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		String sessionVC = (String)session.getAttribute("VerifyCode");
		System.out.println(verify);
		System.out.println(sessionVC);
		if(!sessionVC.equals(verify)){
			session.setAttribute("vfMsg", "验证码错误");
			return ERROR;
		}		
		System.out.println(userName);
		System.out.println(password);
		List<User> list = (List<User>) userService.login(userName, password);
		System.out.println(list.get(0).getUserName());
		if(list.size()>0){
			User user = list.get(0);
				if(user.getRole().getId()!=2){
				session.setAttribute("user", user);
				session.setMaxInactiveInterval(60*15);
				return SUCCESS;
			}
		}
		session.setAttribute("userMsg","用户名错误");
		session.setAttribute("pswMsg","密码错误");
		return ERROR;
	}
	
	public String userlogin() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		String sessionVC = (String)session.getAttribute("VerifyCode");
		System.out.println(verify);
		System.out.println(sessionVC);
		if(!sessionVC.equals(verify)){
			session.setAttribute("vfMsg", "验证码错误");
			return ERROR;
		}		
		System.out.println(userName);
		System.out.println(password);
		List<User> list = (List<User>) userService.login(userName, password);
		System.out.println(list.get(0).getUserName());
		if(list.size()>0){
			User user = list.get(0);
				if(user.getRole().getId()==2){
				session.setAttribute("user", user);
				return SUCCESS;
			}
		}
		session.setAttribute("userMsg","用户名错误");
		session.setAttribute("pswMsg","密码错误");
		return ERROR;
	}
	public String verifyCode() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		VerifyCode.getVerifyCode(request, response);
		return null;
	}
	
	public String logout() throws Exception {
		ServletActionContext.getRequest().getSession().removeAttribute("user");
		return SUCCESS;
	}
	
	public String listAllUsers() throws Exception {
		//应先执行权限检查
		super.execute();
		userList = userService.getAllUsers();
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("userList", userList);
		return SUCCESS;
	}
	
	public String listAllBuyers() throws Exception {
		buyerList =userService.getAllBuyers();
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("buyerList", buyerList);
		return SUCCESS;
	}
	//跳页面
	public String addUser() throws Exception{
		return SUCCESS;
	}
	public String register() throws Exception {
		userService.save(user);
		return SUCCESS;
	}
	public String deleteUser() throws Exception {
		userService.delete(id);
		return SUCCESS;
	}
	public String modifyUser() throws Exception {
		userService.modify(user);
		return SUCCESS;
	}
	public String modify() throws Exception {
		user = userService.findById(id);
		return SUCCESS;
	}
	public String insertbuyer() throws Exception {
		return SUCCESS;
	}
	public String loginuser() throws Exception {
		return SUCCESS;
	}
	public String insertuser() throws Exception {
		return SUCCESS;
	}
	public String reg() throws Exception {
		return SUCCESS;
	}
}