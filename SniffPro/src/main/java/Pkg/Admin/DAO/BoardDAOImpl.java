package Pkg.Admin.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Pkg.Admin.DTO.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BoardDTO> getBoardList(String bIdx,String bTitle, String bContent, String usignId, String bmId){

		Map<String,Object> map=new HashMap<String,Object>();
		map.put("bIdx", bIdx);
		map.put("bTitle", bTitle);
		map.put("bContent", bContent);
		map.put("usignId", usignId);
		map.put("bmId", bmId);
		
		sqlSession.selectList("BoardList",map);
		
		List<BoardDTO>BoardList=(List<BoardDTO>)map.get("result");
		
		return BoardList;
	}
}
