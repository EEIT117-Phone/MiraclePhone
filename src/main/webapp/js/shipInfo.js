$(document).ready(function () {
    cartInputPic();
    shippingAddress();
    function shippingAddress() {

        $('input[name="shipInfo"]').click(function () {
            let value = $(this).val();
            if (value == "郵寄") {
		        //$("#twzipcode").twzipcode();
                $(".ship-address").css("display", "block");
            }
            else {
                $(".ship-address").css("display", "none");
            }
        })

    }
$('#inputAddress').click(function() {
		let id = $('select[name="county"]').val();
		$.ajax({
			url : '/MiraclePhone/cart/orderInfo',
			method : 'GET',
			data : {
				address : id
			},
			success : function(response) {
				$('#inputAddress').text(response);
			}
		});
	});
//    function cartInputPic() {
//        $("#pic1").attr("src", "../images/cartPic1.jpg");
//        $("#pic2").attr("src", "../images/cartPic2.jpg");
//    }

    
	
});




