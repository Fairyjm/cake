package Dao;

import Pojo.User;

public interface LoginDao {
	//登录信息需要验证用户民
	User checkLoginDao(String uname,String pwd);
	
	User checkLoginDao(String uname);
	//关于注册信息插入数据的方法
	public void insertUser(String uname,String pwd);
	
}
