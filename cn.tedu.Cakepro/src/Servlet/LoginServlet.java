package Servlet;
/**
 * 
 * 处理请求数据
 */
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Pojo.User;
import Service.LoginService;
import Service.LoginServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置请求编码格式
		request.setCharacterEncoding("utf-8");
		//设置响应编码格式
		response.setContentType("text/html;charset=utf-8");
		
		//获取数据
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		System.out.println(uname+":"+pwd);
		
		//处理请求
	    //获取业务层对象
		LoginService ls=new LoginServiceImpl();
		//调用方法具体校验用户信息
		User u=ls.checkLoginService(uname, pwd);
		System.out.println(u);
		//响应处理结果
		if(u!=null) {
			//登录用户设置到session中
			HttpSession session=request.getSession();
			
			session.setAttribute( "loginUser", u);
			//response.getWriter().write("一夜暴富");
			response.sendRedirect("index.jsp");
		}else {
        //登录失败后再次来到登陆页面
	    //通过重定向的方式去登录页面
		//response.sendRedirect("Login.jsp");
		/*
		 * 用转发来写	
		 */
		//准备转发数据之前，绑定数据，就是想要交给下一个组件处理的数据绑定到对象中
		request.setAttribute("msg", "用户名或者密码错误！！");	
			
		//获取转发器
		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	    //开始转发
		rd.forward(request, response);
		
			

         
		}
		
		
	}

}
