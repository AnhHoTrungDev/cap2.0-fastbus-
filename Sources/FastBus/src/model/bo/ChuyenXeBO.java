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

import model.bean.DiaDiem;
import model.dao.ChuyenXeDAO;

public class ChuyenXeBO {
	public List<DiaDiem> getListPlaceBO(){
		return new ChuyenXeDAO().getListPlaceDAO();
	}
}
