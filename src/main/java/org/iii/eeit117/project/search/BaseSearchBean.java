package org.iii.eeit117.project.search;

import javax.persistence.criteria.CriteriaQuery;

public abstract class BaseSearchBean<T> {

	public abstract CriteriaQuery<T> getCriteriaQuery();
	
}
