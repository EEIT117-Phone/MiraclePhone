package org.iii.eeit117.project.model.util;

public class StringUtil {
	
	public static Boolean isEmpty(Object o) {
		return o == null || o.toString().trim().length() == 0;
	}
	
	public static Boolean isNonEmpty(Object o) {
		return !isEmpty(o);
	}
}
