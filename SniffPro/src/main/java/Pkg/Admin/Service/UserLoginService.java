package Pkg.Admin.Service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import Pkg.Admin.DTO.UserDTO;
 
public interface UserLoginService {
	
	public String loginCheck(UserDTO uDTO, HttpSession session);
	public void logout(HttpSession session);
	
}
