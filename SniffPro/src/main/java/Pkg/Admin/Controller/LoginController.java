package Pkg.Admin.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Pkg.Admin.DTO.BoardDTO;
import Pkg.Admin.Service.BoardService;
import Pkg.Client.DTO.MemberDTO;
import Pkg.Client.Service.MemberService;

@Controller
public class LoginController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/start")
	public String goindex(Model model) {
		List<BoardDTO> BoardList=null;
		BoardList=boardService.getBoardList("","","","","");
		
		model.addAttribute("BoardList",BoardList);
		return "/index";
	}
	
	@RequestMapping("login_check.do")
	public ModelAndView login_check(@ModelAttribute MemberDTO dto, HttpSession session) {
		 String name = memberService.loginCheck(dto, session);  
		 ModelAndView mav = new ModelAndView();
		  if (name != null) { // 로그인 성공 시
		   mav.setViewName("/Admin/Shop/Product"); // 뷰의 이름
		   } else { // 로그인 실패 시
		     mav.setViewName("/Admin/Board/Adoption"); 		
		     mav.addObject("message", "error");
		     }
		     return mav;
		   }
	
}
