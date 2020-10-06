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
	let totalUnits = 0;
	
    summaryColumn.find("span").each(function () {
        var eachPrice = parseInt($(this).text());
        totalPrice += eachPrice;
    });
	
	$(".cart-main tbody tr td:nth-child(6)").each(function () {
        var unit = parseInt($(this).text());
        totalUnits += unit;
		console.log(totalUnits);
		console.log(unit);
    });
	
	$("#totalAmount").text("總金額:$"+toCurrency(totalPrice));
	$("#totalUnit").text(totalUnits+"件商品");
}

function toCurrency(num) {
	    return (num + "").replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}