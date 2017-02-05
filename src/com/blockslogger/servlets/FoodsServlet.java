package com.blockslogger.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blockslogger.db.ConnectionManager;
import com.blockslogger.models.Food;
import com.google.gson.Gson;
import com.google.gson.JsonObject;




/**
 * Servlet implementation class FoodsServlet
 */
@WebServlet("/FoodsServlet")
public class FoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FoodsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("requestKind").trim().equals("2")){
			loadFood(request, response);
		}else if(request.getParameter("requestKind").trim().equals("1")){
			updateCalories(request, response);
		}else if(request.getParameter("requestKind").trim().equals("3")){
			loadMeal(request, response);
		}else if(request.getParameter("requestKind").trim().equals("4")){
			viewFood(request, response);
		}else if(request.getParameter("requestKind").trim().equals("5")){
			System.out.println("request is 5");
			createFood(request, response);
		}
		
		ConnectionManager.closeConnection();
		
	}
	
	
	protected void loadFood(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String userStrings = request.getParameter("userStrings").trim();
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setHeader("Cache-Control", "no-cache, no-store");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "-1");
		
		response.setHeader("Access-Control-Allow-Origin","*");
		response.setHeader("Access-Control-Allow-Methods","POST");
		response.setHeader("Access-Control-Allow-Headers","Content-Type");
		response.setHeader("Access-Control-Allow-Age","86400");
		
		Gson gson = new Gson();
		JsonObject myObj = new JsonObject();
		
		ResultSet rs = ConnectionManager.executeQuery("SELECT * FROM food WHERE name LIKE '"+userStrings+"%'");
		try{
			while(rs.next()){
				Food food = new Food(rs.getString("f_id"), rs.getString("name"), rs.getDouble("amount"), rs.getDouble("cals"),rs.getString("unit"), rs.getDouble("fat"), rs.getDouble("carbs"), rs.getDouble("protein"));
				myObj.add(food.getId(), gson.toJsonTree(food));
			}
			rs.close();
			ConnectionManager.closeConnection();
			out.println(myObj.toString());
			out.close();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
			
	}
	
	
	
	

	protected void updateCalories(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		String food = request.getParameter("userFood").trim();
		String amnt = request.getParameter("amnt").trim();
		
		
		ResultSet rs = ConnectionManager.executeQuery("select cals/amount as \"calsxgram\" from food where name='"+food+"'");
		
		
		try{
			
			if(rs.next()){
				response.setContentType("text/plain");
				double cals = rs.getDouble("calsxgram")* new Double(amnt);
				
				response.getWriter().write(new DecimalFormat("#.##").format(cals).toString());
				
			}
			
			rs.close();
			ConnectionManager.closeConnection();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
	}
	
	protected void loadMeal(HttpServletRequest request, HttpServletResponse response) throws IOException{
		

		String food = request.getParameter("userFood").trim();
		
					//Food[] meal = request.getParameterValues("meal[]");
		/*PrintWriter out = response.getWriter();
		
		response.setContentType("text/html");
		response.setHeader("Cache-Control", "no-cache, no-store");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "-1");
		
		response.setHeader("Access-Control-Allow-Origin","*");
		response.setHeader("Access-Control-Allow-Methods","POST");
		response.setHeader("Access-Control-Allow-Headers","Content-Type");
		response.setHeader("Access-Control-Allow-Age","86400");
		
		
		Gson gson = new Gson();
		JsonObject myObj = new 	JsonObject();
		
		*/
		
		
		
			
		
	}
	
	//********************* view-meal-modal.jsp ***********************//
	
	/*******************************************************************
	 * PURPOSE: This function will load the table for the
	 * view-food-modal modal.
	 *  
	 * 
	 */
	
	protected void viewFood(HttpServletRequest request, HttpServletResponse response)throws IOException{
		
		ResultSet rs = ConnectionManager.executeQuery("Select * from food");
		
		
		try{
			String foodsTable = "";
			while(rs.next()){
				foodsTable += "<tr class=\"view-food-row\">";
				foodsTable += "<td>"+rs.getString("name")+"</td>";
				foodsTable += "<td>"+rs.getDouble("amount")+"</td>";
				foodsTable += "<td>"+rs.getString("unit")+"</td>";
				foodsTable += "<td>"+rs.getDouble("fat")+"</td>";
				foodsTable += "<td>"+rs.getDouble("carbs")+"</td>";
				foodsTable += "<td>"+rs.getDouble("protein")+"</td>";
				foodsTable += "<td>"+rs.getDouble("cals")+"</td>";
				foodsTable += "<td><p data-placement=\"top\" data-toggle=\"tooltip\" title=\"Edit\"><button class=\"btn btn-primary btn-xs\" data-title=\"Edit\" data-toggle=\"modal\" data-target=\"#edit\" ><span class=\"glyphicon glyphicon-pencil\"></span></button></p></td>";
				foodsTable += "<td><p data-placement=\"top\" data-toggle=\"tooltip\" title=\"Delete\"><button class=\"btn btn-danger btn-xs\" data-title=\"Delete\" data-toggle=\"modal\" data-target=\"#delete-food\" ><span class=\"glyphicon glyphicon-trash\"></span></button></p></td>";
				foodsTable += "</tr>";
			}
			
			response.setContentType("text/plain");
			response.getWriter().write(foodsTable);
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
	}
	
	//********************* create-food-modal.jsp ***********************//
	
	/*******************************************************************
	 * PURPOSE: This function will insert a new food into the database
	 * 
	 *  
	 * 
	 */
	
	protected void createFood(HttpServletRequest request, HttpServletResponse response){
		UUID id = UUID.randomUUID(); 
		//System.out.println("insert into food(f_id,name,amount,unit,fat,carbs,protein,cals)values('"+id+"','"+request.getParameter("name")+"','"+request.getParameter("amount")+"','"+request.getParameter("unit")+"','"+request.getParameter("fat")+"','"+request.getParameter("carbs")+"','"+request.getParameter("protein")+"','"+request.getParameter("cals")+"');");
		ConnectionManager.executeQuery("insert into food(f_id,name,amount,unit,fat,carbs,protein,cals)values('"+id+"','"+request.getParameter("name")+"','"+request.getParameter("amount")+"','"+request.getParameter("unit")+"','"+request.getParameter("fat")+"','"+request.getParameter("carbs")+"','"+request.getParameter("protein")+"','"+request.getParameter("cals")+"');");
	}
	
	/*******************************************************************
	 * PURPOSE: This function will delete the selected food from the database
	 * 
	 *  
	 * 
	 */
	
	protected void deleteFood(HttpServletRequest request, HttpServletResponse response){
		
	}
	
	
	//-----------------MEAL METHODS--------------------------------------------------//
	
	/*******************************************************************
	 * PURPOSE: This function will handle meal insertion requests
	 * parameters: HttpServletRequest, HttpServletResponse
	 * 
	 * 
	 */
	
	protected void addMeal(HttpServletRequest request, HttpServletResponse response){
		
	}
	

}
