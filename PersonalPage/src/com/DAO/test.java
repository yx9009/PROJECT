package com.DAO;
import java.io.IOException;
import java.util.Scanner;

public class test{
public static void main(String args[]) throws IOException{
	int b = (int) Math.round(Math.random()*10);
	int a = (int) Math.round(Math.random()*10);
	System.out.println(a+" "+b);
	System.out.println("please enter the sum of a and b:");
	Scanner input = new Scanner(System.in);
	System.out.println(a+b);
	if(Integer.parseInt(input.next()) == (a+b)){
		System.out.println("right");
		
	}
	else {
		System.out.println("wrong");
	}
}
}