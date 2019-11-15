package com.action;

import com.opensymphony.xwork2.ActionSupport;

import com.dao.UsersInformationDao;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
@Controller @Scope("prototype")
public class LoginAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String userName;
private String userPassword;
@Resource UsersInformationDao userDao;
private javax.servlet.http.HttpServletRequest request;
private javax.servlet.http.HttpServletResponse response;
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
	public void setUserDao(UsersInformationDao userDao) {
	   this.userDao = userDao;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response=response;
		
	}

	public String execute(){
	   String page = "fail";
	   boolean flag = false;
	   flag = userDao.checkUser(userName, userPassword);
	   if(flag){
	    page = "success";
	    request.getSession().setAttribute("sessionname",this.getUserName());     //用Session保存用户名
        request.getSession().setAttribute("sessionpwd",this.getUserPassword()); //保存密码
        request.getSession().setAttribute("sessionplogStatu",true);
	   }
	   return page;
	  }
	}