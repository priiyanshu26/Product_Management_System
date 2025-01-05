package com.jsp.servlet.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add-product")
public class AddProduct extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int productid=Integer.parseInt(req.getParameter("productid"));
		String productname=req.getParameter("productname");
		int productprice=Integer.parseInt(req.getParameter("productprice"));

		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_productdb?user=root&password=Priyanshu@26");
			PreparedStatement pst=conn.prepareStatement("Insert into product values (?,?,?)");
			pst.setInt(1, productid);
			pst.setString(2, productname);
			pst.setInt(3, productprice);


			pst.executeUpdate();
			resp.sendRedirect("index.jsp");

		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

}
