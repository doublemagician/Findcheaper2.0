package com.dao;
import java.util.*;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hibernate.UsersInformation;
@Service @Transactional
public class UsersInformationDao {
//普通用户登录验证,

//@SuppressWarnings("unchecked")屏蔽警告信息
//@SuppressWarnings("unchecked")
	@Resource SessionFactory factory;
public boolean checkUser(String userName,String userPassword){
   boolean flag = false;
   Session s = factory.getCurrentSession();
   String hql = "from UsersInformation as user where user.usersName = '"+userName+"' and user.usersPassword = '"+userPassword+"'";
   Query q = s.createQuery(hql);
   List userList = q.list();
   if(userList.size()>0){
    flag = true;
   }
   return flag;
 }
@Transactional(readOnly=false)
public boolean insertUser(String userName,String userPassword)
{ boolean flag = false;
Session s = factory.getCurrentSession();
s.save(new UsersInformation(userName, userPassword));
	flag=true;

	
return flag;
}
public boolean SignUpcheckUser(String userName){
	   boolean flag = false;
	   Session s = factory.getCurrentSession();
	   String hql = "from UsersInformation as user where user.usersName = '"+userName+"'";
	   Query q = s.createQuery(hql);
	   List userList = q.list();
	   if(userList.size()>0){
	    flag = true;
	   }
	   return flag;
	 }
}


