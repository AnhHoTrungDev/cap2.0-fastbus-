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
import model.bean.PickupPlace;
import model.dao.ChuyenXeDAO;

public class ChuyenXeBO {

	public List<ChuyenXe> getListPlaceBO(String startPlace, String endPlace, String startDate, String startTime) {
		return new ChuyenXeDAO().getListTripDAO(startPlace, endPlace, startDate, startTime);
	}

	public ChuyenXe getListTripByIdBO(int idTrip, String startDate) {
		return new ChuyenXeDAO().getListTripByIdDAO(idTrip, startDate);
	}

	public List<ChuyenXe> getListTripByIdBusinessBO(String idBusiness) {
		return new ChuyenXeDAO().getListTripByIdBusinessDAO(idBusiness);
	}

	public List<PickupPlace> getListPickUpPlaceBO(int idBusiness) {
		return new ChuyenXeDAO().getListPickUpPlaceDAO(idBusiness);
	}

	public List<ChuyenXe> getListTripBO() {
		return new ChuyenXeDAO().getListTripDAO();
	}

	public int InsertListTripBO(List<ChuyenXe> listTrip) {
		return new ChuyenXeDAO().InsertListTripDAO(listTrip);
	}

	public List<ChuyenXe> getListTripNotInSearchByTimeBO(String startPlace, String endPlace, String startDate,
			String startTime) {
		return new ChuyenXeDAO().getListTripNotInSearchByTimeDAO(startPlace, endPlace, startDate, startTime);
	}

	public List<ChuyenXe> getListTripByIdBusinessAndPlaceBO(String idBusiness, String startPlace, String endPlace) {
		return new ChuyenXeDAO().getListTripByIdBusinessAndPlaceDAO(idBusiness,startPlace,endPlace);
	}
}
