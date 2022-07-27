package Pkg.Admin.CartController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Cart2Controller {
	
	@RequestMapping("cart")
	public String goCart() {
		return "/Admin/Cart";
		
	}

}
