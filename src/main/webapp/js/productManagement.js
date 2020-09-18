$(document).ready(function () {

	
	for(a=0; a<100; a++){
		let aa = $("#status-control"+a).siblings('span').html();
		console.log(aa);
		console.log("11");
		if("暫時下架" == aa){
			$("#status-control"+a).text("核准上架");
		}
		
		if("上架中" == aa){
			$("#status-control"+a).text("暫時下架");
		}
		
	}

});
