package Pkg.Client.Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Pkg.Client.DAO.MemberDAO;
import Pkg.Client.DTO.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public String loginCheck(MemberDTO dto, HttpSession session) {
		String uName = memberDAO.loginCheck(dto);
		 if (uName != null) { // 세션 변수 저장
		  session.setAttribute("usignId", dto.getUsignId());
		  session.setAttribute("uName", uName);
		}
		 return uName; 
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();// 세션풀기
		
	}
	
	
}
