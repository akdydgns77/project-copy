package Pkg.Admin.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Pkg.Admin.DTO.CartDTO;

public interface CartService {
	

	public List<CartDTO> getCartList(String usingId, String cIdx);
	
	public Map<String, ArrayList<String>> delCartList(String[] cIdx);


}
