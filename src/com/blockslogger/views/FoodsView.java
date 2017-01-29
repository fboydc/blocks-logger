package com.blockslogger.views;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.blockslogger.db.*;
import com.blockslogger.models.Food;

public class FoodsView {

	private ArrayList<Food> foods;
	
	public FoodsView(){
		initiateFoods();
	}
	
	
	public void initiateFoods(){
		ResultSet rs = ConnectionManager.executeQuery("select * from food");
		try{
			while(rs.next())	
			System.out.println(rs.getString(1));
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		
	}
	
	public ArrayList<Food> getFoods(){
		return foods;
	}
	
	
	
	
	
}
