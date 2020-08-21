$(document).ready(function () {
    cartInputPic();
    cartDelete();
    cartSummary();
    function cartInputPic() {
        $("#pic1").attr("src", "../images/cartPic1.jpg");
        $("#pic2").attr("src", "../images/cartPic2.jpg");
    }
});
function cartDelete() {
    $(".cart-delete").click(function () {
        $(this).closest("tr").remove();
        cartSummary();
    })
}
function cartSummary() {
    summaryColumn = $(".cart-main tbody tr");
    let totalUnit = 0;
    let totalPrice = 0;
    var price = 0;

    // summaryColumn.find("td:nth-child(5)").each(function () {
    //   var unit = parseInt($(this).text());
    //   totalUnit += unit;
    // });

    summaryColumn.find("td:nth-child(6)").each(function () {
        var unit = parseInt($(this).text());
        totalUnit += unit;
    });
    summaryColumn.find("td:nth-child(7)").each(function () {
        var eachPrice = parseInt($(this).text());
        price += eachPrice;
        console.log(price);
        totalPrice = toCurrency(price);

    });
    function toCurrency(num) {
        var parts = num.toString().split('.');
        parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        return parts.join('.');
    }
    $(".cart-summary tbody td:nth-child(2)").text(totalUnit + "個商品");
    $(".cart-summary tbody td:nth-child(3)").text("總金額:$" + totalPrice);
}
function plus() {
    var unit = document.getElementById("unit");
    unit.value = parseInt(unit.value) + 1;
}
function minus() {
    var unit = document.getElementById("unit");
    unit.value = parseInt(unit.value) - 1;
}
