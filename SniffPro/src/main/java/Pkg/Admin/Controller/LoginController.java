
package Pkg.Admin.Controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;


import Pkg.Admin.DTO.UserDTO;
import Pkg.Admin.Service.UserLoginService;


@Controller
public class LoginController {
	
	@Autowired
	UserLoginService userLoginService;
	

	@RequestMapping("login_check.do")
	public ModelAndView login_check(@ModelAttribute UserDTO uDto, HttpSession session) {
		System.out.print("logincon");
		 String name = userLoginService.loginCheck(uDto, session);  
		 ModelAndView mav = new ModelAndView();
		  if (name != null) { // 로그인 성공 시
		   mav.setViewName("/Admin/Login"); // 뷰의 이름
		   } 
		  else { // 로그인 실패 시
			 mav.setViewName("../../index"); 		
		     mav.addObject("message", "error");
		  }
		     return mav;
	}
	

 
}