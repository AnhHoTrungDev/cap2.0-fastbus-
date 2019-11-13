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
	
	public String splitSeat(String seat) {
		
		String listSeat;
		
		listSeat=seat.split("₫")[0].trim();
		
		return listSeat;
	}
	
//	public static void main(String[] args) {
//		System.out.println(new splitString().splitSeat("500 ₫"));
//	}
}
