$(document).ready(function () {
    //cartInputPic();
    cartDelete();
    cartSummary();
//    function cartInputPic() {
//        $("#pic1").attr("src", "/MiraclePhone/images/cartPic1.jpg");
//        $("#pic2").attr("src", "/MiraclePhone/images/cartPic1.jpg");
//    }
});
function cartDelete() {
    $(".cart-delete").click(function () {
        $(this).closest("th").remove();
		$(this).closest("tr").remove();
        cartSummary();
    })
}



function cartSummary() {
    summaryColumn = $(".cart-main tbody tr");
    let totalUnit = 0;
    let totalPrice = 0;
    var price = 0;

    summaryColumn.find("td:nth-child(6)").each(function () {
        var unit = parseInt($(this).text());
        totalUnit += unit;
    });
    summaryColumn.find("td:nth-child(7)").each(function () {
        var eachPrice = parseInt($(this).text());
        totalPrice += eachPrice;
    });
 	$(".cart-summary tbody td:nth-child(2)").text(totalUnit + "個商品");
	$(".cart-summary tbody td:nth-child(3)").text("總金額:$" + toCurrency(totalPrice));
	function toCurrency(num) {
	    return (num + "").replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
}
function plus() {
    var unit = document.getElementById("unit");
    unit.value = parseInt(unit.value) + 1;
}
function minus() {
    var unit = document.getElementById("unit");
    unit.value = parseInt(unit.value) - 1;
}