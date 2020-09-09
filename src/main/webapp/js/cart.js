$(document).ready(function () {

    cartDelete();
    cartSummary();
	moneyFormat();
});
function cartDelete() {
    $(".cart-delete").click(function () {
        $(this).closest("th").remove();
		$(this).closest("tr").remove();
        cartSummary();
    })
}

function moneyFormat() {
	
	for(a=1; a<=10; a++){
    $("#money"+a).text(toCurrency($("#money"+a).text()))
		
	}
}

function cartSummary() {
    summaryColumn = $(".cart-main tbody tr");
    let totalPrice = 0;
	
    summaryColumn.find("td:nth-child(7)").each(function () {
        var eachPrice = parseInt($(this).text());
        totalPrice += eachPrice;
    });
	
	$("#totalAmount").text("總金額:$"+toCurrency(totalPrice));
	
}

function toCurrency(num) {
	    return (num + "").replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}