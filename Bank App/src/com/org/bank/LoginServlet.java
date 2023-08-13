package com.org.bank;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 *
 */
public class LoginServlet extends HttpServlet
{
	Hashtable<String, String> users = new Hashtable<String,String>();
	Hashtable data = new Hashtable();

	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws javax.servlet.ServletException, java.io.IOException
	{
		doPost(req, res);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws javax.servlet.ServletException, java.io.IOException
	{
	
		
		String action = req.getParameter("action");
		System.out.println("Action value ---> " + action);
		if(!action.isEmpty() && action !=null && action.equals("login")) {
			loginFunction(req,res);
		}else if(!action.isEmpty() && action !=null && action.equals("changePassword")) {
			changePassword(req,res);
		}
		else if(!action.isEmpty() && action != null && action.equals("registerUser")) {
			registerUser(req,res);
		}

		

	}
	private void registerUser(HttpServletRequest req, HttpServletResponse res) {
		
		String userid = req.getParameter("name");
		String password = req.getParameter("password");
		String confirmPassword = req.getParameter("confirmNewPassword");

		
	}
	private void changePassword(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String userid = req.getParameter("username");
		String password = req.getParameter("password");
		String newPassword = req.getParameter("newPassword");
		String confirmNewPassword = req.getParameter("confirmNewPassword");

		if(!users.containsKey(userid) || !password.equals(users.get(userid)) || !newPassword.equals(confirmNewPassword)) {
			req.setAttribute("value", "Password Change Unsuccessful");	
			req.getRequestDispatcher("/index.jsp").forward(req,res);
			return;
		}
		else {
			users.put(userid, newPassword);
			req.setAttribute("value", "Password Change Successful");
			req.getRequestDispatcher("/index.jsp").forward(req,res);
			return;
		}
		
	}

	private void loginFunction(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("Inside login function method ****");
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");
		
		if(userid != null && password != null && password.equals(users.get(userid)) )
		{
			//set userid in request to pass it on to AccountServlet
			req.setAttribute("userid", userid);
			// userid available. retrieve the data and generate the page.
			String[] records = (String[]) data.get(userid);
			req.setAttribute("records", records);
			
			//req.getRequestDispatcher("/servlet/AccountServlet").forward(req, res);
			req.getRequestDispatcher("/accountJsp.jsp").forward(req, res);
			return;
		}
		else
		{
			//Unable to login. Send login.html to the user.
			//observe the use of relative path.
			req.getRequestDispatcher("/login.jsp").forward(req, res);
			return;
		}
	}
	public void init()
	{
		users.put("ann", "aaa");
		users.put("john", "jjj");
		users.put("mark", "mmm");
		
		data.put("ann", new String[]{ "01/01/2001 : 1000.00", "01/02/2001 : 1300.00", "01/03/2001 : 900.00"} );
		data.put("john", new String[]{ "01/01/2001 : 4500.00", "01/02/2001 : 2100.00", "01/03/2001 : 2600.00"} );
		data.put("mark", new String[]{ "01/01/2001 : 7800.00", "01/02/2001 : 5200.00", "01/03/2001 : 1900.00"} );

	}
}
