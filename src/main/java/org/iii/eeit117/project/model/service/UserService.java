package org.iii.eeit117.project.model.service;



import org.iii.eeit117.project.model.vo.UserVo;



public interface UserService extends BaseService<UserVo, String> {

	public boolean checkLogin(String account); //檢查UserTable中是否有該會員
	
	
	
	
	
}
