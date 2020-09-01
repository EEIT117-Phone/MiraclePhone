package org.iii.eeit117.project.model.dao;

import org.hibernate.Session;
import org.iii.eeit117.project.model.vo.SellerProductVo;



public class SellerProductDao {

	private Session session;

	public SellerProductDao(Session session) {
		this.session = session;
	}

	public SellerProductVo insert(SellerProductVo spv) {
		SellerProductVo sellerProductVo = session.get(SellerProductVo.class, spv.getProductId());

		if (sellerProductVo == null) {
			session.save(spv);
			return spv;
		}
		return null;
	}
}
