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

import java.time.LocalDate;

public class splitString {
	
	public String[] splitSeat(String seat) {
		
		String[] listSeat=null;
		
			listSeat=seat.split("\\s");
		return listSeat;
	}
	
	public static void main(String[] args) {
		String s1 = "welcome to split world";
		  System.out.println(LocalDate.now().toString());
	
		 
	}
}
