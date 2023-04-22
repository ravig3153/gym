package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.time.*;
import java.lang.NumberFormatException;


/**
 * Servlet implementation class Client
 */
@WebServlet("/content/Client")
public class Client extends HttpServlet {
	
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String HJGJHGJHGJHG = request.getParameter("name");
		System.out.println("FROM Registration"+HJGJHGJHGJHG);
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String addresh = request.getParameter("addresh");
		String mobile= request.getParameter("mobile");
		String doj= request.getParameter("doj");
		int plan= Integer.parseInt(request.getParameter("plan"));
		String gender= request.getParameter("gender");
		
	/*	current date nikalege, isko validFrom me rakh lenge
		
		plan me 1 ho to aaj ka date nikal ke 30 din add kr ke validTo
		2 60 day
		*/
		
//			      LocalDate validfrom = LocalDate.now();
//			      System.out.println("Current Date: "+validfrom);
//			      long monthsToAdd = 0;
//			   
//			      LocalDate validto = validfrom.plusMonths(monthsToAdd);
//			      
//			      System.out.println("New Date is: "+validto);
//			      
//			      LocalDate VF = validfrom;
//			      LocalDate VT = validto;
//			     
//
//	          if(plan == 1){
//		    	VT = VF.plusMonths(1);
//		      }else if(plan==2){
//		    	  VT = VF.plusMonths(2);
//	           }else{
//	        	   VT = VF.plusMonths(3);
//		      }
		      
	          LocalDate validfrom = LocalDate.now(); 
	          LocalDate validto;
		      
	          if(plan == 1){
	        	  validto = validfrom.plusMonths(1);
			      }else if(plan==2){
			    	  validto = validfrom.plusMonths(2);
		           }else{
		        	   validto = validfrom.plusMonths(3);
			      }
  
			      
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym_db","root","root");
			
			String q="insert into client_details (name, email, password, addresh, mobile, doj, validfrom, validto, gender) values(?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement pstmt=con.prepareStatement(q);
			pstmt.setString(1,HJGJHGJHGJHG);
			pstmt.setString(2,email);
			pstmt.setString(3, password);
			pstmt.setString(4, addresh);
			pstmt.setString(5, mobile);
			
			pstmt.setString(6, doj);
//			pstmt.setTimestamp(7, java.sql.Timestamp.valueOf(validfrom));
			pstmt.setDate(7, java.sql.Date.valueOf(validfrom));
			pstmt.setDate(8, java.sql.Date.valueOf(validto));
			pstmt.setString(9, gender);
			
			pstmt.executeUpdate();
			response.getWriter().write("done");
			
			
		}  catch (Exception e){
			e.printStackTrace();
			response.getWriter().write("error");
		}
		
	}

}
