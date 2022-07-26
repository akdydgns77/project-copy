package Pkg.Admin.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {

	@RequestMapping("Product")
	public String goProduct() {
		return "/Admin/Shop/Product";
	}
}
