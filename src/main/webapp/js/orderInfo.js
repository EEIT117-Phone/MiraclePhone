$(document).ready(function () {
    shippingAddress();

	});

function shippingAddress() {
	
        $('input[name="shipInfo"]').click(function () {
            let value = $(this).val();
            if (value == "郵寄") {
			console.log(value);
		        $("#twzipcode").twzipcode();
                $(".ship-address").css("display", "block");
            }
            else {
                $(".ship-address").css("display", "none");
            }
        })

	$('#address').click(function() {
		let county = $('select[name="county"]').val();
		let district = $('select[name="district"]').val();
		let add = county + district
		$("#address").val(add);
		});
    
	
	
}


    
	





