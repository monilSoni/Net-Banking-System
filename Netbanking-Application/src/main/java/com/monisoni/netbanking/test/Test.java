package com.monisoni.netbanking.test;

import java.sql.Connection;
import java.sql.DriverManager;



public class Test {
	
	
	public static void main(String[] args) {
		
		String url ="jdbc:mysql://localhost:3306/netbanking_test?useSSl=false";
		String user="hbstudent";
		String pass="hbstudent";
		
		
		try {
			System.out.println("Connecting...");
			
			Connection myConn = DriverManager.getConnection(url,user,pass);
			
			System.out.println("Connection successful!");
			
			myConn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		} 
		
		

	}

}
