package org.iii.eeit117.project.model.service;



import java.util.List;

import org.iii.eeit117.project.model.vo.UserVo;



public interface UserService extends BaseService<UserVo, String> {

	public String checkLogin(String account,String password); //檢查UserTable中是否有該會員
	
	public List<String> getColumnName();
	
	
	
		

	
	
	
	
	
	
	
	
}
