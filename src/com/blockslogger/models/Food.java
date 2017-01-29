package com.blockslogger.models;

import java.util.ArrayList;

public class Food {
	private String name;
	private double amount;
	private String unit;
	private double fat;
	private double carbs;
	private double protein;
	private double fatblocks;
	private double carbblocks;
	private double proteinblocks;
	
	public Food(String name, double amount, String unit, double fat, double carbs, double protein){
		this.name = name;
		this.amount = amount;
		this.unit = unit;
		this.fat = fat;
		this.carbs = carbs;
		this.protein = protein;
		transformToBlocks(fat, carbs, protein);
		
	}
	
	
	public void transformToBlocks(double fat, double carbs, double protein){
		this.fatblocks = fat/1.5;
		this.carbblocks = carbs/9;
		this.protein = protein/7;
	}
	
	//------------------GETTERS---------------------------------------------//
	
	public String getName(){
		return name;
	}
	
	public double getAmount(){
		return amount;
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
