/**
 * @FileName	: ProvinceDistrictWardBO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Dec 2, 2019			QuocLH				Create
 */

package model.bo;

import java.util.List;

import model.bean.District;
import model.bean.Province;
import model.bean.Ward;
import model.dao.ProvinceDistrictWardDAO;

public class ProvinceDistrictWardBO {

	public List<Province> getListProvinceBO() {
		return new ProvinceDistrictWardDAO().getListProvinceDAO();
	}

	public List<District> getListDistrictBO(String idProvince) {
		return new ProvinceDistrictWardDAO().getListDistrictDAO(idProvince);
	}

	public List<Ward> getListWardBO(String idDistrict) {
		return new ProvinceDistrictWardDAO().getListWardDAO(idDistrict);
	}
}
