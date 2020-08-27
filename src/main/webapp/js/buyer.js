$(document).ready(function () {
	$(".small").click(function() {
		$("#photo").attr("src", this.src);
		$("#photockick").attr("href", this.src);
	});

	$("#aaa").click(function() {
		$("#quest1").show();
		$("#quest2").hide();
		$("#quest3").hide();
	});

	$("#bbb").click(function() {
		$("#quest2").show();
		$("#quest1").hide();
		$("#quest3").hide();
	});

	$("#ccc").click(function() {
		$("#quest3").show();
		$("#quest2").hide();
		$("#quest1").hide();
	});

	$('#addShopCart').click(function() {
		let id = $('input[name="phoneId"]').val();
		$.ajax({
			url : 'http://localhost:8080/MiraclePhone/CartAddServlet',
			method : 'POST',
			data : {
				productId : id
			},
			success : function(response) {
				$('#amount').text(response);
			}
		});
	});
	});
