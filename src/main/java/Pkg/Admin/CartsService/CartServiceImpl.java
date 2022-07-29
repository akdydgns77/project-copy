package Pkg.Admin.CartsService;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Pkg.Admin.CartsDAO.CartListDAO;
import Pkg.Admin.CartsDTO.CartListDTO;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	CartListDAO cartDAO;

	@Override
	public List<CartListDTO> getCartList(String usingId, String cIdx) {
		
		return cartDAO.getCartList(usingId, cIdx);
	}

	@Override
	public void delCartList(Map<String, String[]> map) {
		
		cartDAO.delCartList(map);
		
	}

}
