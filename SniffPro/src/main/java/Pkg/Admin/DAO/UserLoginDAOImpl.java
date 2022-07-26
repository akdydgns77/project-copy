package Pkg.Admin.DAO;

import java.util.HashMap;


import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Pkg.Admin.DTO.UserDTO;

@Repository
public class UserLoginDAOImpl implements UserLoginDAO{

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public String loginCheck(UserDTO uDto) {
		
		return sqlSession.selectOne("Pkg.Admin.Member.login_check",uDto);
	}

	

}
