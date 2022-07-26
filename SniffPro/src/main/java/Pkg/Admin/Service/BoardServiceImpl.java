package Pkg.Admin.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Pkg.Admin.DAO.BoardDAO;
import Pkg.Admin.DTO.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	
	@Override
	public List<BoardDTO> getBoardList(String bIdx, String bTitle, String bContent, String usignId, String bmId) {
		
		return boardDAO.getBoardList(bIdx, bTitle, bContent, usignId, bmId);
	}
	

}
