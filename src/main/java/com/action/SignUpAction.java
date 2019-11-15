package com.action;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.control.DataIntegrity;
import com.dao.UsersInformationDao;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class SignUpAction extends ActionSupport implements ServletResponseAware{
	/**
	 * 
	 */
	@Resource UsersInformationDao userDao;
	public UsersInformationDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UsersInformationDao userDao) {
		this.userDao = userDao;
	}

	private static final long serialVersionUID = 1L;
	private String userName;
	private String userPassword;
	private String userPassword2;
	private String email;
	private String phone;
	String message="error";

	class Mymessage{
		public String message;
		Mymessage(String mess)
		{
			this.message=mess;
		}
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserPassword2() {
		return userPassword2;
	}
	public void setUserPassword2(String userPassword2) {
		this.userPassword2 = userPassword2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String check() throws IOException
	{	boolean tag=true;
		String user=DataIntegrity.username(this.getUserName());
		String email=DataIntegrity.emailFormat(getEmail());
		String phone=DataIntegrity.phonenum(getPhone());
				if(!user.equals("succ")){
					message="error";
				addFieldError("username",user);
				tag=false;
				}
				else {
					
					
					if (userDao.SignUpcheckUser(userName)) {
					    addFieldError("username", "该用户名已经被注册");
					    message="error";
					    tag=false;
					}
				}
				
				if(!email.equals("succ"))
				{
					message="error";
					addFieldError("email",email);
					tag=false;
				}
				if(!phone.equals("succ"))
				{		
						message="error";
						addFieldError("phone", phone);
						tag=false;
				}
				if(this.getUserPassword().equals(this.getUserPassword2()))
				{
					
				}
				else{
					addFieldError("password1", "两次密码不一致");
					message="error";
					tag=false;
				}
		
		return tag?"succ":"error";
	
	}
	public String execute() throws IOException {
		String mm=this.check();
		if(mm.equals("error"))
		{
			return this.message;
		}
		else {
			
			userDao.insertUser(userName, userPassword);
			return "succ";
		}
		
	}

	public void setServletResponse( HttpServletResponse response) {
	}

}
