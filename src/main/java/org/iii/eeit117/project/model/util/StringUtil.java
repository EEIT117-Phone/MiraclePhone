package org.iii.eeit117.project.model.util;

public class StringUtil {
	
	public static void main(String[] args) {
		String s = "";
		
		if (s == null || "".equals(s)) {
			System.out.println("null");
		} else {
			System.out.println("not null");
		}
	}

	public static Boolean isEmpty(Object o) {
		return o == null || o.toString().length() == 0;
	}
	
	public static Boolean isNonEmpty(Object o) {
		return !isEmpty(o);
	}
}
