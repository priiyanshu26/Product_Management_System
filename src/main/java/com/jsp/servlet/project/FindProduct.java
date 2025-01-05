package com.jsp.servlet.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/display-product")
public class FindProduct extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Map<String, Object>> product=this.fetchallproduct();
		if(product!=null) {
			req.setAttribute("list", product);
			req.getRequestDispatcher("display.jsp").forward(req, resp);
			
			
		}
		else {
			System.err.print("no product found");
		}
	}
	private List<Map<String , Object>> fetchallproduct() {
		Connection connection=null;
		List<Map<String , Object>> product=new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_productdb?user=root&password=Priyanshu@26");
			String query="select * from product";
			Statement st= connection.createStatement();
			ResultSet resultset=st.executeQuery(query);
			while(resultset.next()) {
				Map<String , Object> p=new HashMap<>();
				p.put("productid", resultset.getInt(1));
				p.put("productname", resultset.getString(2));
				p.put("productprice", resultset.getInt(3));
				
				product.add(p);
			}
			return product;
		}
		catch(ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
		finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
		
	}

}










