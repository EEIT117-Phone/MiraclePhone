$(document).ready(function () {
	
    cartDelete();
    cartSummary();
});
function cartDelete() {
    $(".cart-delete").click(function () {
        $(this).closest("th").remove();
		$(this).closest("tr").remove();
        cartSummary();
    })
}



function cartSummary() {
    summaryColumn = $(".product td");
    let totalPrice = 0;
	
    summaryColumn.find("span").each(function () {
        var eachPrice = parseInt($(this).text());
        totalPrice += eachPrice;
    });
	
	$("#totalAmount").text("總金額:$"+toCurrency(totalPrice));
	
}

function toCurrency(num) {
	    return (num + "").replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}