package Servlet;
/**
 * 注册类
 * 
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoginDao;
import Dao.LoginDaoImpl;
import Pojo.User;

/**
 * Servlet implementation class RegistServlet
 */
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//注册功能的实现：
		//1.获取用户提交的用户信息
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		//2.判断用户名是否可用
		 LoginDao loginDao=new LoginDaoImpl();
		 User u=loginDao.checkLoginDao(uname);
		 if(u!=null) {
			//注册失败
			 request.setAttribute("registmsg", "用户已经注册过了");
			 request.getRequestDispatcher("regist.jsp").forward(request,response);			 
		 }else {
			 //注册成功
			//3.将用户信息插入到数据库
			 loginDao.insertUser(uname, pwd);
		 }
		//4.注册成功则去登录页面，注册失败，回到注册页面并且进行失败提示
		 response.sendRedirect("login.jsp");
		 
	}

}
