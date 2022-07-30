
package Pkg.Admin.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Pkg.Admin.DTO.CartDTO;
import Pkg.Admin.Service.CartService;

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
		
		List<CartDTO> cartList = cartService.getCartList("", "");
		
		model.addAttribute("cartList", cartList);
		return "/Admin/Cart";
	}
	

	@RequestMapping("CartList")
	public String CartList(String usignId, Model model) {
		List<CartDTO> cartList = cartService.getCartList("", "");
		
		model.addAttribute("cartList", cartList);
		
		return "/Admin/Cart";
		
	}
	
	@RequestMapping("delCartList")
	public String delAuthList(String[] cIdx) {
		
		Map<String, ArrayList<String>> errMap = cartService.delCartList(cIdx);
		
		//error처리
		
		return "redirect:goCart?pId=";
	}
	

}

