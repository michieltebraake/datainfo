package nl.utwente.di;

import java.util.HashMap;

public class Quoter {
	private HashMap<String, Double> books = new HashMap<String, Double>();
	
	public Quoter(){
		books.put("1", 10d);
		books.put("2", 45d);
		books.put("3", 20d);
		books.put("4", 35d);
		books.put("5", 50d);
	}
	
	public double getBookPrice(String isbn){
		if(books.containsKey(isbn)){
			return books.get(isbn);
		}
		return 0d;
	}

}
