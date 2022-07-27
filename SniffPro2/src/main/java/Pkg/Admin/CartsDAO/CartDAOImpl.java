package Pkg.Admin.CartsDAO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import Pkg.Admin.CartsDTO.CartDTO;

public class CartDAOImpl implements CartDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<CartDTO> getCartList(String cIdx) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cIdx", cIdx);
		
		return null;
	}

	@Override
	public Map<String, ArrayList<String>> delCartList() {
		// TODO Auto-generated method stub
		return null;
	}

}
