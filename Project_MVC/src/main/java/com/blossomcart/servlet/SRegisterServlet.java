package com.blossomcart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blossomcart.bean.CReg;
import com.blossomcart.bean.SReg;
import com.blossomcart.doa.CRegDao;
import com.blossomcart.doa.SRegDao;

/**
 * Servlet implementation class SRegisterServlet
 */
@WebServlet("/SRegisterServlet")
public class SRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SRegisterServlet() {
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
		
		SRegDao obj=new SRegDao();
		String oname=request.getParameter("owner_name");
		String sname=request.getParameter("shop_name");
		String address_1=request.getParameter("address_1");
		String address_2=request.getParameter("address_2");
		String district=request.getParameter("district");
		String state=request.getParameter("state");
		String pincode=request.getParameter("pincode");
		String license=request.getParameter("license_id");
		String pnum=request.getParameter("phone");
	    String email=request.getParameter("email");
		
		
		
		try {
			SReg reg=new SReg();
			reg.setOname(oname);
			reg.setSname(sname);
			reg.setAddress1(address_1);
			reg.setAddress2(address_2);
			reg.setDistrict(district);
			reg.setState(state);
			reg.setPincode(pincode);
			reg.setLicenseid(license);
			reg.setPnum(pnum);
			reg.setEmail(email);
			String result=obj.sReg(reg);
			if(result.equals("Succsess")) {
				System.out.println("Success");
				response.sendRedirect("login.jsp");
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		
	}

	}
