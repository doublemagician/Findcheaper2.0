package com.control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlConnection {
	
	    Connection con = null;
	    private static final String url="jdbc:mysql://cdb-4w3cvpke.bj.tencentcdb.com:10064/"+"findcheaper_database"+"?userUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false&allowPublicKeyRetrieval=true";		
		//锟斤拷锟捷匡拷锟斤拷锟斤拷锟街凤拷锟斤拷
	    private static final String user="root";//锟斤拷录锟斤拷
	    private static final String password="wy123321";//锟斤拷锟斤拷
	    
		public SqlConnection()
		{
	        //1.锟斤拷锟斤拷锟斤拷锟斤拷
	        try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				System.out.println("正在加载驱动。。。");
	                        //锟斤拷锟揭伙拷锟絧rintln锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷斐ｏ拷锟斤拷锟斤拷锟角凤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟街凤拷锟斤拷锟角凤拷锟斤拷锟�
				e.printStackTrace();
			}
			try {
				con = DriverManager.getConnection(url, user, password);
			        System.out.println("连接数据库成功。。。");
			} catch (SQLException e) {
				System.out.println("数据库连接失败。。。");
	                        //锟斤拷锟揭伙拷锟絧rintln锟斤拷锟斤拷锟斤拷锟斤拷锟绞э拷埽锟斤拷锟斤拷锟斤拷锟斤拷锟街凤拷锟斤拷锟斤拷锟竭碉拷录锟斤拷锟皆硷拷锟斤拷锟斤拷锟角凤拷锟斤拷锟�
				e.printStackTrace();
			}
	          
		}
}
