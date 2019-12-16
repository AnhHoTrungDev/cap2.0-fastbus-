/**
 * @FileName	: DiaDiemBO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Sep 29, 2019			QuocLH				Create
 */


package model.bo;

import java.util.List;

import model.bean.DiaDiem;
import model.bean.PickupPlace;
import model.dao.DiaDiemDAO;

public class DiaDiemBO {
	
	  public List<DiaDiem> getListPlaceBO(){ 
		  return new DiaDiemDAO().getListPlaceDAO();
	  }
	  public List<DiaDiem> getListPlaceNotDaNangBO() {
		  return new DiaDiemDAO().getListPlaceNotDaNangDAO();
	  }
	public List<PickupPlace> loadListPickUpPlaceByIdBusiness(String idBusiness) {
		return new DiaDiemDAO().loadListPickUpPlaceByIdBusiness(idBusiness);
	}
	public String insertPickUpBO(PickupPlace pick) {
		return new DiaDiemDAO().insertPickUpDAO(pick);
	}
}
