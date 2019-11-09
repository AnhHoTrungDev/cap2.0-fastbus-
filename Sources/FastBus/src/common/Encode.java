/**
 * @FileName	: Encode.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Nov 9, 2019			QuocLH				Create
 */

package common;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Encode {

	public String md5(String pass) {
		String rs = null;
		try {
			MessageDigest md = MessageDigest.getInstance("md5");
			md.update(pass.getBytes());
			BigInteger bigInteger = new BigInteger(1, md.digest());
			rs = (String)bigInteger.toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return rs;
	}
}