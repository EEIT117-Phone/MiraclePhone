$(function () {
	 $("#password")
        .blur(
            function () { //驗證密碼
                let pwdrule = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[~!@#$%^&*()_+`\-={}\[\]:";'<>?,.\/]).{4,16}$/;
                
                let result = pwdrule.test($("#password").val());
                
                if (result == false) {
                    $("#pwdsure").html("格式不符或空白")
					$("#pwdsure").val("false");
                } else {
                    $("#pwdsure").html("成功")
                }

            })

		
    $("#birth").blur(function () { //自動計算年齡
        userbirth = document.getElementById("birth").value;
        let today = new Date();
        let tyear = today.getFullYear();
        let uyear = userbirth.split("-")[0]
        document.getElementById("age").value = (tyear - uyear);
        console.log(document.getElementById("age").value);

        if (document.getElementById("age").value < 20) //年齡不滿20歲隱藏當買家資格
        {
            document.getElementById("seller").hidden = true;
            document.getElementById("seller_word").hidden = true;
        } else {
            document.getElementById("seller").hidden = false;
            document.getElementById("seller_word").hidden = false;
        }
    })

   
    $("#idnumber").blur(function () {
        if (checkID(this.value)) {
            $("#sureidnumber").text("正確");
        } else {
            $("#sureidnumber").text("驗證錯誤");
			$("#sureidnumber").val("false");
        }
    })

    function checkID(id) { //驗證身分證字號
        tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		tabchange1=[1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3]
		tabchange2=[0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5]
        verif=[0,8,7,6,5,4,3,2,1,1]

        if (id.length != 10){
			
            return false;

		}
		firstChar=id.charAt(0) //第一個英文字
        firstChartIndex = tab.indexOf(id.charAt(0)) //輸入身分證第一個字母在tab內的index
		firstnum=tabchange1[firstChartIndex] //第一個數字
		secondnum=tabchange2[firstChartIndex] //第二個數字
		sum=firstnum*1+secondnum*9 //先將頭兩位數相加
       for(a=1;a<10;a++){ //將後九位數字與驗證碼放在同一個index，再相加
		
		sum=sum+id[a]*verif[a]
		}
	if(sum%10!=0){
	
	return false 
	
	}
	
	return true
	
	
  }

 $("#userdata").click(function(){
	if($("#pwdsure").val=="false"){
		alert("密碼格式有誤")
		return false;
	}
	else if($("#sureidnumber").val=="false"){
		alert("身分證格式有誤")
		return false;
	}
	return true;
});
	
	

//設定大頭貼預覽
$("#file").change(function() {
 readURL(this); 
});
function readURL(input){
  if(input.files && input.files[0]){
    var reader = new FileReader();
    reader.onload = function (e) {
       $("#previewImg").attr('src', e.target.result);
    }
    reader.readAsDataURL(input.files[0]);
  }
}


$("#twzipcode").twzipcode({ //外掛地址
zipcodeIntoDistrict: true, // 郵遞區號自動顯示在區別選單中
css: ["county form-control", "district form-control"] // 自訂 "城市"、"地別" class 名稱 
});
	
});