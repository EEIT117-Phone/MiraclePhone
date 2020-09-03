package org.iii.eeit117.project.model.dao;


import java.util.List;

import org.iii.eeit117.project.model.vo.UserVo;
import org.iii.eeit117.project.search.BaseSearchBean;
import org.springframework.stereotype.Component;

@Component
public class UserDao extends BaseDao<UserVo, String> {

	public List<UserVo> findBy(BaseSearchBean<UserVo> searchBean) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
