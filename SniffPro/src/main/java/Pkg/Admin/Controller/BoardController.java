package Pkg.Admin.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Pkg.Admin.DTO.BoardDTO;
import Pkg.Admin.Service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping("BoardList")
	public String getProgramList(Model model) {
		
		List<BoardDTO> BoardList=null;
		BoardList=boardService.getBoardList("","","","","");
		
		model.addAttribute("BoardList",BoardList);
		
		
		return "/index";
	}
	
	@RequestMapping("Adoption")
	public String goAdoption() {
		return "/Admin/Board/Adoption";
	}
	
	@RequestMapping("Volunteer")
	public String goVolunteer() {
		return "/Admin/Board/Volunteer";
	}
	
}
