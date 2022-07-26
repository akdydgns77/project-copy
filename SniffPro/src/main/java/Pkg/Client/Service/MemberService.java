package Pkg.Client.Service;

import javax.servlet.http.HttpSession;

import Pkg.Client.DTO.MemberDTO;

public interface MemberService {

	public String loginCheck(MemberDTO dto, HttpSession session);
	 public void logout(HttpSession session);
}
