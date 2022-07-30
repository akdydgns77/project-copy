package Pkg.Admin.DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Pkg.Admin.DTO.CartDTO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Pkg.Admin.DTO.CartDTO;

public interface CartDAO {
	
	List<CartDTO> getCartList(String usingId, String cIdx);//목록
	
	Map<String, ArrayList<String>>delCartList(String[] cIdx);

}
