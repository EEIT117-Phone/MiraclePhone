$(document).ready(function () {
    $(".small").click(function () {
    $("#myImg").attr("src", this.src);
  });

	$("#aaa").click(function() {
		$("#quest1").show();
		$("#quest2").hide();
		$("#QAA").hide();
	});

	$("#bbb").click(function() {
		$("#quest2").show();
		$("#quest1").hide();
		$("#QAA").show();
	});

	$('#addShopCart').click(function() {
		let id = $('input[name="phoneId"]').val();
		$.ajax({
			url : 'http://localhost:8080/MiraclePhone/cart/OrderInfoServlet',
			method : 'GET',
			data : {
				productId : id
			},
			success : function(response) {
				$('#amount').text(response);
			}
		});
	});
	var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("myImg");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}
	});
