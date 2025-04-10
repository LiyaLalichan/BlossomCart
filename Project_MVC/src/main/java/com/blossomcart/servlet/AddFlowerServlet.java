package com.blossomcart.servlet;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.blossomcart.bean.Product;
import com.blossomcart.doa.ProductDao;

@WebServlet("/AddFlowerServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class AddFlowerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String UPLOAD_DIR = "uploads";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form values
        String name = request.getParameter("flowerName");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        int stock = Integer.parseInt(request.getParameter("stock"));
        String description = request.getParameter("description");

        // Handle image
        Part filePart = request.getPart("image");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        filePart.write(uploadPath + File.separator + fileName);

        // Get shopId from session
        HttpSession session = request.getSession();
        Integer shopIdObj = (Integer) session.getAttribute("shop_id");
        
        // Check if shop_id exists in session
        if (shopIdObj == null) {
            // Redirect to login page if shop_id is not in session
            response.sendRedirect("login.jsp?error=Please login first");
            return;
        }
        
        int shopId = shopIdObj.intValue();

        // Create Product object
        Product product = new Product();
        product.setName(name);
        product.setCategory(category);
        product.setPrice(price);
        product.setStock(stock);
        product.setDescription(description);
        product.setImage(fileName); // only store file name
        product.setShopId(shopId);

        // Save to DB
        ProductDao dao = new ProductDao();
        String result = dao.addProduct(product);

        if ("Success".equals(result)) {
            response.sendRedirect("shopowner_view.jsp?msg=added");
        } else {
            response.sendRedirect("shopowner_view.jsp?msg=error");
        }
    }
}