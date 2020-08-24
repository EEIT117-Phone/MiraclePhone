package org.iii.eeit117.project.model.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class ColumnFormatUtil {

	private static Pattern p = Pattern.compile("_[\\w]");
	
	private static Pattern p2 = Pattern.compile("[A-Z][\\w]");
	
	public static String colToField(String colName) {
		StringBuffer fName = new StringBuffer(colName.toLowerCase());
		Matcher m = p.matcher(fName);
		while (m.find()) {
			fName = fName.replace(m.start(), m.end(), m.group().toUpperCase().substring(1));
		}
		return fName.toString();
	}
	
	public static String fieldToCol(String fieldName) {
		StringBuffer fName = new StringBuffer(fieldName);
		Matcher m = p2.matcher(fName);
		while (m.find()) {
			fName = fName.replace(m.start(), m.end(), "_" + m.group());
		}
		return fName.toString().toUpperCase();
	}
	
	public static String getPlaceHolders(Integer amount) {
		return IntStream.range(0, amount).mapToObj(i -> "?").collect(Collectors.joining(","));
	}
	
}
