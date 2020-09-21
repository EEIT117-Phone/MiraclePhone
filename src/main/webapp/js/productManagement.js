$(document).ready(function () {
	
	for(a=0; a<100; a++){
		$("#status-control"+a).click(function() {
		let id = $(this).val();
		let btn = $(this);
		console.log(this)
		$.ajax({
			url : CONTEXT_PATH + 'productManagement/offShelf',
			method : 'GET',
			data : {
				productId : id
			},
			success : function(response) {
				if("核准上架"==btn.text()){
					btn.siblings('span').text("上架中");
					btn.text("暫時下架");
				}else{
					btn.siblings('span').text("暫時下架");
					btn.text("核准上架");
				}
			}
		});
	});
		
		let statusButton = $("#status-control"+a).siblings('span').html();
		if("暫時下架" == statusButton){
			$("#status-control"+a).text("核准上架");
		}
		
		if("上架中" == statusButton){
			$("#status-control"+a).text("暫時下架");
		}
	}
});
function statusButton(){
	
}

