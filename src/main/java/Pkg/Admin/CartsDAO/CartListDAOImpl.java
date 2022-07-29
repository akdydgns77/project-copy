package Pkg.Admin.CartsDAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Pkg.Admin.CartsDTO.CartListDTO;

@Repository
public class CartListDAOImpl implements CartListDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<CartListDTO> getCartList(String usingId, String cIdx) {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("usingId", usingId);
		map.put("cIdx", cIdx);
		
		sqlSession.selectList("selCartList", map);
		
		List<CartListDTO> cartList = (List<CartListDTO>)map.get("result");
		
		return cartList;
	}

	@Override
	public void delCartList(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		
	}

}
