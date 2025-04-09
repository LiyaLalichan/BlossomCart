package com.blossomcart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blossomcart.bean.CReg;
import com.blossomcart.bean.Login;
import com.blossomcart.bean.SReg;
import com.blossomcart.doa.LoginDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String uname=request.getParameter("email");
		String paswrd=request.getParameter("password");
		String utype=request.getParameter("role");
		try {
				Login lobj=new Login();
				lobj.setUname(uname);
				lobj.setPword(paswrd);
				lobj.setUsertype(utype);
				LoginDao dobj=new LoginDao();
				boolean result=dobj.uLogin(lobj);
				
				if(result=true) {
					String usertype=lobj.getUsertype();
					
					if(usertype.equals("user")) {
						response.sendRedirect("View.jsp");
					}
					else {
						response.sendRedirect("ShopView.jsp");
					}
				}
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

}
