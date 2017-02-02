package com.blockslogger.models;

import java.util.ArrayList;

public class Food {
	private String id;
	private String name;
	private double amount;
	private double cals;
	private String unit;
	private double fat;
	private double carbs;
	private double protein;
	private double fatblocks;
	private double carbblocks;
	private double proteinblocks;
	
	public Food(String id, String name, double amount, double cals, String unit, double fat, double carbs, double protein){
		this.id = id;
		this.name = name;
		this.amount = amount;
		this.cals = cals;
		this.unit = unit;
		this.fat = fat;
		this.carbs = carbs;
		this.protein = protein;
		transformToBlocks(fat, carbs, protein);
		
	}
	
	
	private void transformToBlocks(double fat, double carbs, double protein){
		this.fatblocks = fat/1.5;
		this.carbblocks = carbs/9;
		this.protein = protein/7;
	}
	
	//------------------GETTERS---------------------------------------------//
	
	public String getId(){
		return id;
	}
	
	public String getName(){
		return name;
	}
	
	public double getAmount(){
		return amount;
	}
	
	public double getCals(){
		return cals;
	}
	
	public String getUnit(){
		return unit;
	}
	
	public double getFat(){
		return fat;
	}
	
	public double getCarbs(){
		return carbs;
	}
	
	public double getProtein(){
		return protein;
	}
	
	public double getFatBlocks(){
		return fatblocks;
	}
	
	public double getCarbBlocks(){
		return carbblocks;
	}
	
	public double getProteinBlocks(){
		return proteinblocks;
	}
	
	//-------------SETTERS----------------------------------//
	

}
