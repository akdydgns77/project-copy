package Pkg.Admin.DAO;

import java.util.List;

import Pkg.Admin.DTO.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> getBoardList(String bIdx,String bTitle, String bContent, String usignId, String bmId);
}
