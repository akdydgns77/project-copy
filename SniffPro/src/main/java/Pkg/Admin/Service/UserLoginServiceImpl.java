package Pkg.Admin.Service;

import java.util.HashMap;
import java.util.List;
 

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Pkg.Admin.DAO.UserLoginDAO;
import Pkg.Admin.DTO.UserDTO;

@Service
public class UserLoginServiceImpl implements UserLoginService {
	
	@Autowired
	private UserLoginDAO userDAO;

	@Override
	public String loginCheck(UserDTO uDto, HttpSession session) {
		String uName = userDAO.loginCheck(uDto);
		 if (uName != null) { // 세션 변수 저장
		  session.setAttribute("usignId", uDto.getUsignId());
		  //session.setAttribute("uName", uName);
		  session.setAttribute("uName", uDto.getuName());
		}
		 //System.out.print(uName);
		 return uName; 
		 
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();// 세션풀기
		
	}
	
	
}
