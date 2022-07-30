package Pkg.Admin.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Pkg.Admin.DAO.CartDAO;
import Pkg.Admin.DTO.CartDTO;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	CartDAO cartDAO;

	@Override
	public List<CartDTO> getCartList(String usingId, String cIdx) {
		
		return cartDAO.getCartList(usingId, cIdx);
	}

	@Override
	public Map<String, ArrayList<String>> delCartList(String[] cIdx) {
		
		return cartDAO.delCartList(cIdx);
	}

}
