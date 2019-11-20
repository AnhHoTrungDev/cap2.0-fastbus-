/**
 * @FileName	: ChuyenXeBO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Sep 21, 2019			QuocLH				Create
 */

package model.bo;

import java.util.List;

import model.bean.ChuyenXe;
import model.dao.ChuyenXeDAO;

public class ChuyenXeBO {

	public List<ChuyenXe> getListPlaceBO(String startPlace, String endPlace, String startDate, String startTime) {
		return new ChuyenXeDAO().getListTripDAO(startPlace, endPlace, startDate, startTime);
	}
	public ChuyenXe getListTripByIdBO(int idTrip) {
		return new ChuyenXeDAO().getListTripByIdDAO(idTrip);
	}
	public List<ChuyenXe> getListTripByIdBusinessBO(String idBusiness) {
		return new ChuyenXeDAO().getListTripByIdBusinessDAO(idBusiness);
	}

}
