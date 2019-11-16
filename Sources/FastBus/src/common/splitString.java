/**
 * @FileName	: splitString.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Nov 12, 2019			QuocLH				Create
 */


package common;


public class splitString {
	
	public float splitSeat(String seat) {
		
		float listSeat;
		
		listSeat=Float.parseFloat(seat.split(" ")[0]);
			
		String name ="ghbjnkml,kjhghb";
		return listSeat;
	}
	
	public static void main(String[] args) {
		String s1 = "welcome to split world";
		  System.out.println("returning words:");
		  
		   System.out.println(s1.split("\\s", 0).toString());
		  
		 
	}
}
