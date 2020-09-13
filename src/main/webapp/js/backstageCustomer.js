$(document).ready(function () {
	let selectq1=$("#selectq1").text(); 
	$("#selectq1").css("display", "none");
	$("#selectq_1").css("display", "none");
	$("#selectq_2").css("display", "none");
	$("#selectq_3").css("display", "none");
	$("#selectq_4").css("display", "none");
	
	if("賣家相關"==selectq1){
		 $("#selectq_1").css("display", "block");
	}else if("配送問題"==selectq1){
		$("#selectq_2").css("display", "block");
	}else if("會員相關"==selectq1){
		$("#selectq_3").css("display", "block");
	}else if("退貨及退款"==selectq1){
		$("#selectq_4").css("display", "block");
	}
    



	});