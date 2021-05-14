package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Pojo.User;
import Utils.ConnectionUtils;

public class LoginDaoImpl implements LoginDao {
//LoginServlet
	@Override
	public User checkLoginDao(String uname, String pwd) {
		//声明JDBC对象
		//Connection conn=null;//连接对象
		PreparedStatement ps=null;//传输对象
		ResultSet rs=null;//结果集对象
		//声明数据存储对象
		User u=null;
		
		try {
			
			//通过封装类创建连接对象
			Connection conn=ConnectionUtils.getConn();
			//sql命令
			String sql="SELECT * FROM t_user WHERE uname=? AND pwd=?";
			//创建sql对象
			ps=conn.prepareStatement(sql);
			//给占位符赋值
			ps.setString(1, uname);
			ps.setString(2, pwd);
			//执行
			rs=ps.executeQuery();
			//遍历执行结果
			while(rs.next()) {
				u=new User();
				u.setUid(rs.getInt("uid"));
				u.setUname(rs.getString("uname"));
				u.setPwd(rs.getString("pwd"));
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				//ps.close();
			ConnectionUtils.closeConn();	
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return u;
	}
//registServlet
	@Override
	public User checkLoginDao(String uname) {

		//声明JDBC对象
		//Connection conn=null;//连接对象
		PreparedStatement ps=null;//传输对象
		ResultSet rs=null;//结果集对象
		//声明数据存储对象
		User u=null;
		
		try {
			
			//通过封装类创建连接对象
			Connection conn=ConnectionUtils.getConn();
			//sql命令
			String sql="SELECT * FROM t_user WHERE uname=?";
			//创建sql对象
			ps=conn.prepareStatement(sql);
			//给占位符赋值
			ps.setString(1, uname);
			//ps.setString(2, pwd);
			//执行
			rs=ps.executeQuery();
			//遍历执行结果
			while(rs.next()) {
				u=new User();
				u.setUid(rs.getInt("uid"));
				u.setUname(rs.getString("uname"));
				u.setPwd(rs.getString("pwd"));
				return u;
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				//ps.close();
			ConnectionUtils.closeConn();	
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	//用户信息注册成功后插入数据
	@Override
	public void insertUser(String uname, String pwd) {
		try {
	Connection conn=ConnectionUtils.getConn();
	String sql="insert into t_user (uname,pwd)value(?,?)";
	PreparedStatement  ps= conn.prepareStatement(sql);
	ps.setString(1, uname);
	ps.setString(2, pwd);
	//executeUpdate()执行增删改sql命令
	ps.executeUpdate();
		}catch(Exception e) {		
			  try {
				ConnectionUtils.closeConn();
			} catch (Exception e1) {
				e1.printStackTrace();
			}		
}
		}
	}

