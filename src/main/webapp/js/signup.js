$(function () {
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

function checkform(){
	if($("#pwdsure").val=="false"){
		alert("密碼格式有誤")
		return false;
	}
	else if($("#sureidnumber").val=="false"){
		alert("身分證格式有誤")
		return false
	}
}
	
	
var uploadimg = document.getElementById("uploadimg"); //上傳照片
var previewImg = document.getElementById("previewImg"); //照片預覽處
var fileReader = new FileReader(); //設立一個空的file讀取物件
////設定大頭貼預覽
//uploadimg.addEventListener("change", e => {
//  var file = e.target.files[0];  // 取得 File Object
//  fileReader.readAsDataURL(file);  // 將 File Object 讀取成 DataURL
//	console.log(e.target.files);
//});

// load 時可以取得 fileReader 回傳的結果
fileReader.addEventListener("load", function() {
  var dataURL = fileReader.result;   // Base64 Image
  previewImg.src = dataURL;
});
////設定提交按鈕的click功能為ajax文件送去Controller
//$("#test").click(
//	function(){
//		var xhr=new XMLHttpRequest();
//		var userForm=new FormData($("#sendimg")); //創建一個新ajax的傳送載體
//		xhr.open("POST","/MiraclePhone/usersignupimg",true);
//		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
//		xhr.onreadystatechange=function(){
//			if(xhr.readyState==4)
//			{
//				if(xhr.status==200)
//			{
//				alert("圖片上傳成功");
//			}
//			}
//			
//		}
//		var filename_ajax=$("#account").val()+"-headphoto"; //設定大頭貼名稱為 "帳號名-headphoto"
//		var sendimg_ajax=$("#uploadimg")[0].files[0] //取得欲上傳照片
//		userForm.append("imagename",filename_ajax);
//		userForm.append("uploadimg",sendimg_ajax);
//		
//		xhr.send(userForm);
//	});
$("#twzipcode").twzipcode({ //外掛地址
zipcodeIntoDistrict: true, // 郵遞區號自動顯示在區別選單中
css: ["county form-control", "district form-control"] // 自訂 "城市"、"地別" class 名稱 
});
	


	});
