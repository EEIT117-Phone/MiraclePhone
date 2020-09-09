var userdata=document.getElementById("userdata")

var modifybutton=document.getElementById("modifybutton");
modifybutton.addEventListener("click",hideform); //新增[表單消失]的功能給[修改使用者按鈕]

function hideform(){
	var modifyarea=document.getElementById("modifyarea");
	var modifybutton_area=document.getElementById("modifybutton-area");
	modifyarea.style.display="block";       //顯現修改使用者資訊表單
	modifybutton_area.style.display="none"  //將修改使用者按鈕消失
}

erTWZipcode();  //地址

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

birth.addEventListener("blur",countage);





	
