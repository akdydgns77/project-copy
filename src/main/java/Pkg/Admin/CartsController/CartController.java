package Pkg.Admin.CartsController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Pkg.Admin.CartsDTO.CartListDTO;
import Pkg.Admin.CartsService.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	@Autowired
	private HttpServletResponse response;
	
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("goCart")
	public String goCart(Model model) {
		
		List<CartListDTO> cartList = cartService.getCartList("", "");
		
		model.addAttribute("cartList", cartList);
		return "/Admin/Cart";
	}
	

	@RequestMapping("CartList")
	public String CartList(String usignId, Model model) {
		List<CartListDTO> cartList = cartService.getCartList("", "");
		
		model.addAttribute("cartList", cartList);
		
		return "/Admin/Cart";
		
		}
	

}
