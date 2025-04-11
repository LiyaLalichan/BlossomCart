package com.blossomcart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blossomcart.bean.CReg;
import com.blossomcart.doa.CRegDao;

/**
 * Servlet implementation class CRegisterServlet
 */
@WebServlet("/CRegisterServlet")
public class CRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRegisterServlet() {
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
//		doGet(request, response);
		CRegDao obj=new CRegDao();
		String fname=request.getParameter("firstName");
		String lname=request.getParameter("lastName");
		String email=request.getParameter("email");
		String pword=request.getParameter("password");
		String pnum=request.getParameter("phone");
		
		
		
		try {
			CReg reg=new CReg();
			reg.setFname(fname);
			reg.setLname(lname);
			reg.setEmail(email);
			reg.setPword(pword);
			reg.setPnum(pnum);
			String result = obj.cReg(reg);
		    System.out.println("Registration result: " + result);  // Debug line
		    
		    if(result.equals("Succsess")) {
		        System.out.println("Redirecting to login page");
		        response.sendRedirect("login.jsp");
		    }
			else {
				System.out.println("Registration failed");
				response.sendRedirect("register.jsp");
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		
	}

}
