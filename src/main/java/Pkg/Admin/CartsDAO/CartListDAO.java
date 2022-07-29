package Pkg.Admin.CartsDAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Pkg.Admin.CartsDTO.CartListDTO;

public interface CartListDAO {
	
	List<CartListDTO> getCartList(String usingId, String cIdx);//목록
	
	public void delCartList(Map<String, String[]> map);

}
