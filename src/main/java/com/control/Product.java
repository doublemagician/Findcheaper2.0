package com.control;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
class TestUrl{
	private static URL url=null;
	private static HttpURLConnection connection;
	private static int statusCode = -1; 
	private static int testCounts = 5;
	
	public synchronized URL isConnect(String urlStr) {  
		 int counts = 1;  
		 if (urlStr == null || urlStr.length() <= 0) 
		 {                         return null;                   
		 }  
		 while (counts <= testCounts) 
		 {  
			 try {url = new URL(urlStr);  
			 connection = (HttpURLConnection) url.openConnection();  
			 statusCode = connection.getResponseCode();  
			 System.out.println("��"+(counts) +"/"+testCounts+"�����ӣ�   statusCode:"+statusCode); 
			 counts++;   //�Ǹ�ʽ��������
		 if (statusCode == 200) {//������
			 System.out.println("URL���ã�");  
			 break;  }
		 else{//��������
			 url = null;
			 }
		 }
		  
		 catch (MalformedURLException e) {//��ʽ����
			 System.out.println("URL�����ã��������ӵ�"+(counts) +"/"+testCounts+"��"); 
			 url = null; counts++;   
			 continue;  }
		 catch (IOException e) {
			 //IO����
			 System.out.println("URL�����ã��������ӵ�"+(counts) +"/"+testCounts+"��"); 
			 url = null; counts++;   }
		 	}  
		 return url;  
		 }
		 
	 
	  
}


public class Product {
	public String type;
	public String title;
	public float price;
	public String img;
	public String url;
	public float CQF;
	Product(){}
	public Product(String type,String title,String url, String img ,float CQF,float price) throws MalformedURLException{
		this.type=type;
		this.title=title;
		this.price=price;
		this.img=img;
		this.url=url;
		this.CQF=CQF;
	}
	public boolean test_url()	
	{
		TestUrl a=new TestUrl();
		
		URL temp=a.isConnect(url.toString());
		if(temp!=null)
		return true;
		else 
			return false;
	}
	 

	
}

