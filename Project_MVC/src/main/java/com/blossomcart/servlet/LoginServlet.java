package com.blossomcart.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blossomcart.bean.Login;
import com.blossomcart.doa.LoginDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("email");
        String paswrd = request.getParameter("password");
        String utype = request.getParameter("role");

        try {
            Login lobj = new Login();
            lobj.setUname(uname);
            lobj.setPword(paswrd);
            lobj.setUsertype(utype);

            LoginDao dobj = new LoginDao();
            boolean result = dobj.uLogin(lobj);

            if (result) {
                // If login is successful, fetch the shop_id and set it in the session
                HttpSession session = request.getSession(); // Get the session object
                if (utype.equals("user")) {
                    response.sendRedirect("View.jsp");
                } else {
                    // Use the shop_id that is now in the Login object
                    int shopId = lobj.getShopId(); // Get shop_id set by uLogin method
                    session.setAttribute("shop_id", shopId); // Store the shop ID in the session
                    response.sendRedirect("ShopView.jsp");
                }
            } else {
                response.sendRedirect("login.jsp?error=invalid");
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
