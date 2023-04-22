package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.model.Customer;
import com.model.Grahak;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String mobile = request.getParameter("mobile");
		try{
			 Class.forName("com.mysql.cj.jdbc.Driver");
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym_db","root","root");
				String q =" SELECT * FROM client_details where mobile=?";
				PreparedStatement pstmt=con.prepareStatement(q);
				pstmt.setString(1,mobile);
				ResultSet rs= pstmt.executeQuery();
				System.out.println("sunday");
				
//				List<Grahak> list = new ArrayList<Grahak>();
			
				while (rs.next()){
					Customer gra = new Customer();
					gra.setId(rs.getInt("id"));
					gra.setName(rs.getString("name"));
					gra.setEmail(rs.getString("email"));
					gra.setPassword(rs.getString("password"));
					gra.setAddresh(rs.getString("addresh"));
					gra.setMobile(rs.getString("mobile"));
					System.out.println( "hello");
					gra.setDoj(rs.getString("doj").substring(0, 10));
					
					gra.setValidfrom(rs.getDate("validfrom").toLocalDate());
					gra.setValidto(rs.getDate("validto").toLocalDate());
					
					gra.setAddresh(rs.getString("addresh"));
					gra.setGender(rs.getString("gender"));
					
//					 list.add(gra);
					
					 Gson gson = new Gson(); 
		 			   
		 			  PrintWriter out = response.getWriter();
		 				out.print(gson.toJson(gra));
		 				out.flush();
		 				out.close();
				
				}
				
				
				
				
				
				
				
			
			
			
			
		}catch(Exception e){
			
			
			
		}
	}

}
