package Pkg.Client.DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Pkg.Client.DTO.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public String loginCheck(MemberDTO dto) {
		
		return sqlSession.selectOne("Pkg.Admin.Member.login_check",dto);
	}

	
}
