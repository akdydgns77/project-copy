package Pkg.Admin.Service;

import java.util.List;

import Pkg.Admin.DTO.BoardDTO;

public interface BoardService {

	public List<BoardDTO> getBoardList(String bIdx,String bTitle, String bContent, String usignId, String bmId);
}
