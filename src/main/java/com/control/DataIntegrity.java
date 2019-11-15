package com.control;


public class DataIntegrity {
public static boolean naming(String name)//����ֻ���Ǻ��ֻ���Ӣ��
{	int i=0;
	while( i<name.length())
	{
		if(!('A'<=name.charAt(i)&&'Z'>=name.charAt(i)||'a'<=name.charAt(i)&&'z'>=name.charAt(i)||name.charAt(i) >= 0x4E00 && name.charAt(i) <= 0x9FA5))
			return false;
		i++;
			
	}
	return true;
	
}
public static String username(String username) {
	int i=0;
	if(username.length()!=0)
	{
		if(username.length()<11)
		{	
			while(i<username.length())
			{
				if('A'<=username.charAt(i)&&'Z'>=username.charAt(i)||'a'<=username.charAt(i)&&'z'>=username.charAt(i)||username.charAt(i) >= '0' && username.charAt(i) <= '9')
			{
				return "succ";	
			}
			else
				return "用户名只能由字母或者数字组成";
			}
		
		}
		else
			return "用户名长度不能超过11位";
	}
	else
	{
		return "用户名不能为空";
	}
	return "succ";
} 

public static  String emailFormat(String email) {
	String message="succ";
	if(email!=null||email.length()!=0)
	{
	if (!email.matches("[\\w\\.\\-]+@([\\w\\-]+\\.)+[\\w\\-]+")) {
		message="邮箱格式有误";
        }
	}
	else
	{
		message="邮箱不能为空";
	}
	return message;
}
public static boolean idcard(String ID)//IDֻ����18λ������
{int i=0;
	while(i<ID.length())
	{
		if(!('0'<=ID.charAt(i)&&'9'>=ID.charAt(i))||ID.length()!=18)
			return false ;
		i++;
	}
	return true;
	}
public static boolean isnumber(String number)
{
	int i=0;
	while(i<number.length())
	{
		if(!('0'<=number.charAt(i)&&'9'>=number.charAt(i)))
			return false ;
		i++;
	}
	return true;
}
public static String phonenum(String phone)//�绰ֻ����11λ������
{int i=0;
	String message="succ";
	while(i<phone.length())
	{
		if(!('0'<=phone.charAt(i)&&'9'>=phone.charAt(i))||phone.length()!=11)
			{message="电话格式有误";break;}
		i++;
	}
	return message;
	}
public static boolean license(String License)//���ƺ�ֻ�ܣ��к��֡�Ӣ�ĺ�����
{
	
	int i=0;
	while( i<License.length())
	{
		if(!('A'<=License.charAt(i)&&'Z'>=License.charAt(i)||i >= 0x4E00 && i <= 0x9FA5||'0'<=License.charAt(i)||'9'>=License.charAt(i))||License.length()!=7)
			return false;
		i++;
	}
	return true;
}
	}