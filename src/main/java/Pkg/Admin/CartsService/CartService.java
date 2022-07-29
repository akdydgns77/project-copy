package Pkg.Admin.CartsService;

import java.util.List;
import java.util.Map;

import Pkg.Admin.CartsDTO.CartListDTO;

public interface CartService {
	
	public List<CartListDTO> getCartList(String usingId, String cIdx);
	
	public void delCartList(Map<String, String[]> map);

}
