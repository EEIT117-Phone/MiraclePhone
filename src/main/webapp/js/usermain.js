$(function () {
//	$("#home").css("display","none");
/*	$("#showform").click(function(){
		$("#home").css("display","block");
	})*/

var save_sex=document.getElementById("sex_save").value;

var sex_list=$("input[name='sex']");
var seller_save=document.getElementById("save_seller").value;
var seller=document.getElementById("seller");

for(var i=0;i<sex_list.length;i++){
	if(sex_list[i].value==save_sex){
		sex_list[i].checked=true;
	}
}

if(seller.value==seller_save){
	seller.checked=true;
}

$("#twzipcode").twzipcode({
zipcodeIntoDistrict: true, // 郵遞區號自動顯示在區別選單中
css: ["city form-control", "town form-control"], // 自訂 "城市"、"地別" class 名稱 
countyName: "county", // 自訂城市 select 標籤的 name 值
districtName: "district" // 自訂區別 select 標籤的 name 值

});


function countage(){ //計算年齡
	var birth=document.getElementById("birth").value;
	var today=new Date();
	var birthyear=birth.split("-")[0];
	var todayyear=today.getFullYear();
	var age=todayyear-birthyear;
	document.getElementById("age").value=age;
	 if (document.getElementById("age").value < 20) //年齡不滿20歲隱藏當買家資格
        {
            document.getElementById("seller").hidden = true;
            document.getElementById("seller_word").hidden = true;
        } else {
            document.getElementById("seller").hidden = false;
            document.getElementById("seller_word").hidden = false;
        }
}
$("#password")
        .blur(
            function () { //驗證密碼
                let pwdrule = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[~!@#$%^&*()_+`\-={}\[\]:";'<>?,.\/]).{4,16}$/;
                
                let result = pwdrule.test($("#password").val());
                
                if (result == false) {
                    $("#password").val("不符格式");
                } 
				

            })

 $("#idnumber").blur(function () {
        if (!checkID(this.value)) {
          $("#idnumber").val("不符格式");
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
	
	return false;
	
	}
	
	return true;
	
	
  }




function checkform(){
	if($("#password").val()==""||$("#password").val()=="不符格式"){
		alert("密碼空白或格式不符");
		return false;
		
		
	}
	else if($("#idnumber").val()==""||$("#idnumber").val()=="不符格式"){
		alert("身分證空白或格式不符");
		return false;
		
		
	}
	else{
	return true;
	}
	
}
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

var submitbutton=document.getElementById("submit");
birth.addEventListener("blur",countage);

var save_shipInfoFace=$("#save_shipInfoFace").val();
var save_shipInfoPost=$("#save_shipInfoPost").val();

var shipInfoFace=document.getElementById("shipInfoFace");
var shipInfoPost=document.getElementById("shipInfoPost");



if(save_shipInfoFace=="商品面交"){
	document.getElementById("shipInfoFace").checked=true;
}

if(save_shipInfoPost=="郵寄"||save_shipInfoPost=="商品郵寄匯款"){
	shipInfoPost.checked=true;
}

console.log(shipInfoFace.ckecked);
})




	
