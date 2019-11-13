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

import java.util.ArrayList;
import java.util.List;

public class splitString {
	
	public String[] splitSeat(String seat) {
		
		String[] listSeat;
		
		listSeat=seat.split(",");
		return listSeat;
	}
}
