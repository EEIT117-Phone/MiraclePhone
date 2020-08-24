// var map = {
//   '台北市': [
//     {
//       'cname': '大安區',
//       'code': '106'
//     },
//     {
//       'cname': '信義區',
//       'code': '107'
//     }
//   ]
// }
$(document).ready(function () {
    cartInputPic();
    shippingAddress();
    function shippingAddress() {

        $('input[name="shipMethodRadioOptions"]').click(function () {
            let value = $(this).val();
            if (value == "post") {
                $(".ship-address").css("display", "block");

            }
            else {
                $(".ship-address").css("display", "none");
            }
        })

    }
    function cartInputPic() {
        $("#pic1").attr("src", "../images/cartPic1.jpg");
        $("#pic2").attr("src", "../images/cartPic2.jpg");
    }
	
});




