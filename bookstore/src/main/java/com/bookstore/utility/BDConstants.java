package com.bookstore.utility;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BDConstants {
	public final static String BD="BD";
	public final static Map<String, String> mapOfBDDivision=new HashMap<String, String>(){
		{
			
			put("DH","Dhaka");
			put("RA","Rajshahi");
			put("BA","Barisal");
			put("CH","Chittagong");
			put("KH","Khulna");
			put("RN", "Rangpur");
			put("SY", "Sylhet");
			put("MY", "Mymensingh");
			
		}
		
	};
	
	public final static List<String> listOfBDDivisionCode=new ArrayList<String>(mapOfBDDivision.keySet());
	public final static List<String> listOFBDDivisionName=new ArrayList<String>(mapOfBDDivision.values());

}
