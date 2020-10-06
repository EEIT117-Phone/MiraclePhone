

$(document).ready(function () {
    
    shipMethod();
    function shipMethod() {

        let shipMethod = 711;
        if (shipMethod == "711") {
            let store = "7-11" + "信安門市" + "   ";
            let storeAdd = "台北市大安區大安路一段218號";
            $(".shipMethod").text(store + storeAdd);
        }
        else {
            $(".shipMethod").text("請與賣家聊聊，約定取貨地點");
        }
    }


});

