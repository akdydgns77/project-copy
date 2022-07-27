package Pkg.Admin.CartsDAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Pkg.Admin.CartsDTO.CartDTO;

public interface CartDAO {
	
	public List<CartDTO> getCartList(String cIdx);
	
	public Map<String, ArrayList<String>> delCartList();

}
