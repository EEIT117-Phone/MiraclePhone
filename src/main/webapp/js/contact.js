$(function() {
    var customerQA = ["請選擇", "賣家相關", "配送問題", "會員相關", "發票載具", "退貨及退款"];
    var customerQASelect = document.getElementById("question");
    var inner = "";
    for (var i = 0; i < customerQA.length; i++) {
        inner = inner + '<option value=i>' + customerQA[i] + '</option>';
	
    }
    customerQASelect.innerHTML = inner;


    var sectors = new Array();
    sectors[0] = ["請選擇"];
    sectors[1] = ["賣家評價", "商品付款方式", "商品規格疑問"];
    sectors[2] = ["配送時長", "配送方式", "其他"];
    sectors[3] = ["修改會員資料", "海外會員", "取消註冊"];
    sectors[4] = ["發票及載具問題"];
    sectors[5] = ["退貨進度查詢", "退貨相關問題", "維修保固相關問題"]

    function changequestion(index) {
        var Sinner = "";
        for (var i = 0; i < sectors[index].length; i++) {
            Sinner = Sinner + '<option value=i>' + sectors[index][i] + '</option>';
        }
        var sectorSelect = document.getElementById("question-sector");
        sectorSelect.innerHTML = Sinner;
    }
    changequestion(document.getElementById("question").selectedIndex);
    
    $('#profile-tab').click(function() {
    	$.ajax({
			url : '/MiraclePhone/contact/history',
			method : 'GET',
			success : function(json) {
				let str = '';
				for (var index in json) {
					let obj = json[index];
					str += '<tr><td>' + (Number(index) + 1) + '</td><td>' + obj.select1 + '-' + obj.select2
					+ '</td><td>' + obj.date + '</td><td>' + obj.question + '</td><td>' + obj.answer + '</td></tr>';
				}
				$('#profile-tab-table-tbody').html(str);
			}
		});
    });
    
});