$(function() {
    var customerQA = ["請選擇", "賣家相關", "配送問題", "會員相關", "發票載具", "退貨及退款"];
    var customerQASelect = document.getElementById("question");
    var inner = "";
    for (var i = 0; i < customerQA.length; i++) {
        inner = inner + '<option value='+ customerQA[i] +'>' + customerQA[i] + '</option>';
	
    }
    customerQASelect.innerHTML = inner;
    
	let a = document.getElementById("question").selectedIndex;
    changequestion(a);
    $('#profile-tab').click(function() {
        $.ajax({
            url : CONTEXT_PATH + '/contact/history',
            method : 'GET',
            success : function(jsonArr) {
                $('#profile-tab-table-tbody').html(jsonArr.map(({selectq1, selectq2, date, question, answer},index)=> 
	                `
		                <tr>
		            		<td>${index + 1}</td>
		            		<td>${selectq1}-${selectq2}</td>
		            		<td>${date}</td>
		            		<td>${question}</td>
		            		<td>${answer || ''}</td>
		            	</tr>
	            	`
                ).join(''));
            }
        });

	 });
});

 	var sectors = new Array();
    sectors[0] = ["請選擇"];
    sectors[1] = ["賣家評價", "商品付款方式", "商品規格疑問"];
    sectors[2] = ["配送時長", "配送方式", "其他"];
    sectors[3] = ["修改會員資料", "海外會員", "取消註冊"];
    sectors[4] = ["發票及載具問題"];
    sectors[5] = ["退貨進度查詢", "退貨相關問題", "維修保固相關問題"];

    function changequestion(index) {
        var Sinner = "";
        for (var i = 0; i < sectors[index].length; i++) {
            Sinner = Sinner + '<option value='+sectors[index][i]+'>' + sectors[index][i] + '</option>';
        }
        var sectorSelect = document.getElementById("question-sector");
        sectorSelect.innerHTML = Sinner;
    }








