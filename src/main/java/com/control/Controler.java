package com.control;

import java.net.MalformedURLException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.control.Product;
import com.control.SqlConnection;



public class Controler {
	public ArrayList<Product> SelectProductType(String Type,int low,int high){//锟斤拷询锟斤拷品
		String sqlStr1="select * from products_information where ProductType like'"+Type+"'and ProductPrice>"+low+" and ProductPrice<"+high+" ORDER BY ProductCQF DESC";//锟揭碉拷锟斤拷询锟斤拷锟斤拷品锟斤拷锟斤拷一锟斤拷锟斤拷锟斤拷
		SqlConnection sql=new SqlConnection();//锟斤拷锟斤拷锟斤拷锟捷匡拷
		try {
			Statement st=sql.con.createStatement();
			System.out.println("开始查询数据");		
			ResultSet rs=st.executeQuery(sqlStr1);
			 ArrayList<Product> news=new ArrayList<Product>();
			while(rs!=null&&rs.next()){

				news.add(new Product(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getFloat(6),rs.getInt(5)));
			}
			
			System.out.println("数据查询成功");
			System.out.println("--------------!");
			rs.close();
			st.close();
			sql.con.close();
			return news;//锟斤拷锟斤拷锟斤拷锟斤拷	
		} catch (SQLException e) {
			System.out.println("ErrorCode"+e.getErrorCode());
			System.out.println("SQLState"+e.getSQLState());
			System.out.println("reason:"+e.getMessage());
			// TODO 锟皆讹拷锟斤拷锟缴碉拷 catch 锟斤拷
			e.printStackTrace();
			return null;//锟斤拷没锟斤拷锟揭碉拷锟斤拷锟斤拷锟截匡拷
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}	
	}
	
	public Boolean Registeruser(String u,String p){//注锟斤拷时锟斤拷锟斤拷锟矫伙拷锟斤拷息锟斤拷锟斤拷锟矫伙拷锟角凤拷锟斤拷锟�
		String sqlInsert1="insert into users_information VALUES('"+u+"',"+p+")";
		
		SqlConnection sql=new SqlConnection();//锟斤拷锟斤拷锟斤拷锟捷匡拷
		try {
			Statement st=sql.con.createStatement();
			System.out.println("锟斤拷锟斤拷Statement锟缴癸拷");
			st.executeUpdate(sqlInsert1);
			System.out.println("锟斤拷锟斤拷锟斤拷莩晒锟� ");
			st.close();
			sql.con.close();
			return true;		
		} catch (SQLException e) {
			
			System.out.println("ErrorCode"+e.getErrorCode());
			System.out.println("SQLState"+e.getSQLState());
			System.out.println("reason:"+e.getMessage());
			// TODO 锟皆讹拷锟斤拷锟缴碉拷 catch 锟斤拷
			e.printStackTrace();
			return false;
		}	
	}
	
	public String Loginuser(String u){//锟斤拷录时锟斤拷锟斤拷锟矫伙拷锟角凤拷锟斤拷诨锟斤拷锟斤拷锟斤拷欠锟斤拷锟饺�
		String sqlStr1="select * from users_information where users_name='"+u+"'";
		SqlConnection sql=new SqlConnection();//锟斤拷锟斤拷锟斤拷锟捷匡拷
		try {
			Statement st=sql.con.createStatement();
			System.out.println("锟斤拷锟斤拷Statement锟缴癸拷");		
			ResultSet rs=st.executeQuery(sqlStr1);
			String p=null;
			while(rs!=null&&rs.next())
			p=rs.getString(2);			//锟矫碉拷锟斤拷锟斤拷
			System.out.println(p);
			System.out.println("--------------!");
			rs.close();
			st.close();
			sql.con.close();
			return p;//锟斤拷锟斤拷锟斤拷锟斤拷	
		} catch (SQLException e) {
			System.out.println("ErrorCode"+e.getErrorCode());
			System.out.println("SQLState"+e.getSQLState());
			System.out.println("reason:"+e.getMessage());
			// TODO 锟皆讹拷锟斤拷锟缴碉拷 catch 锟斤拷
			e.printStackTrace();
			return null;//锟斤拷没锟斤拷锟揭碉拷锟斤拷锟斤拷锟截匡拷
		}	
	}
	
	
	public ArrayList<Product> SelectProduct(String name,int low,int high){//锟斤拷询锟斤拷品
		String sqlStr1="select * from products_information where ProductTitle like'%"+name+"%'and ProductPrice>"+low+" and ProductPrice<"+high;//锟揭碉拷锟斤拷询锟斤拷锟斤拷品锟斤拷锟斤拷一锟斤拷锟斤拷锟斤拷
		SqlConnection sql=new SqlConnection();//锟斤拷锟斤拷锟斤拷锟捷匡拷
		try {
			Statement st=sql.con.createStatement();
			System.out.println("锟斤拷锟斤拷Statement锟缴癸拷");		
			ResultSet rs=st.executeQuery(sqlStr1);
			 ArrayList<Product> news=new ArrayList<Product>();
			while(rs!=null&&rs.next()){

				news.add(new Product(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getFloat(6),rs.getInt(5)));
			}
			
			System.out.println("锟斤拷询锟斤拷锟捷成癸拷!");
			System.out.println("--------------!");
			rs.close();
			st.close();
			sql.con.close();
			return news;//锟斤拷锟斤拷锟斤拷锟斤拷	
		} catch (SQLException e) {
			System.out.println("ErrorCode"+e.getErrorCode());
			System.out.println("SQLState"+e.getSQLState());
			System.out.println("reason:"+e.getMessage());
			// TODO 锟皆讹拷锟斤拷锟缴碉拷 catch 锟斤拷
			e.printStackTrace();
			return null;//锟斤拷没锟斤拷锟揭碉拷锟斤拷锟斤拷锟截匡拷
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}	
	}


}
