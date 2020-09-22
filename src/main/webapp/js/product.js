$(function () {
    $("#twzipcode").twzipcode();
});
	department = new Array();
	
	department[1] = [ "全新機"];  
	department[2] = [ "整新機","9成新", "7成新", "6成新" ]; 
	department[3] = [ "零件機" ]; 
	
	function renew(index) {
		for (var i = 0; i < department[index].length; i++)
			document.productForm.phoneCondition.options[i] = new Option(
					department[index][i], department[index][i]); 
		document.productForm.phoneCondition.length = department[index].length; 
	}
