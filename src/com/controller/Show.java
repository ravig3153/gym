package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.google.gson.Gson;

import com.model.Customer;



/**
 * Servlet implementation class show
 */
@WebServlet("/show")
public class Show extends HttpServlet {
	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
             Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym_db","root","root");
			String q =" SELECT * FROM client_details";
			PreparedStatement pstmt=con.prepareStatement(q);

			ResultSet rs= pstmt.executeQuery();
			
			List<Customer> list = new ArrayList<Customer>();
			
			while (rs.next()){
				Customer cus = new Customer();
				cus.setId(rs.getInt("id"));
				cus.setName(rs.getString("name"));
				cus.setEmail(rs.getString("email"));
				cus.setPassword(rs.getString("password"));
				cus.setAddresh(rs.getString("addresh"));
				cus.setMobile(rs.getString("mobile"));
				System.out.println( "hello");
				cus.setDoj(rs.getString("doj").substring(0, 10));
				
				cus.setValidfrom(rs.getDate("validfrom").toLocalDate());
				cus.setValidto(rs.getDate("validto").toLocalDate());
				
				cus.setAddresh(rs.getString("addresh"));
 			    cus.setGender(rs.getString("gender"));
 			    
 			    list.add(cus);
 			   
			}
			//return  list;
		
// 			   HttpSession session = request.getSession();
//				 session.setAttribute("data", cus);
				
		//	 PrintWriter out = response.getWriter(); ye code data le kar ajax call pr jata hai..

 			    
 			  
 			   Gson gson = new Gson(); 
 			   
 			  PrintWriter out = response.getWriter();
 				out.print(gson.toJson(list));
 				out.flush();
 				out.close();
	
			
		}catch(Exception e){
			
			
		}
		
	}
		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("POST called");
		}

}
	
		
	