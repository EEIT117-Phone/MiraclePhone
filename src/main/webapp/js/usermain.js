var userdata=document.getElementById("userdata")

var modifybutton=document.getElementById("modifybutton");
modifybutton.addEventListener("click",hideform); //新增[表單消失]的功能給[修改使用者按鈕]

function hideform(){
	var modifyarea=document.getElementById("modifyarea");
	var modifybutton_area=document.getElementById("modifybutton-area");
	modifyarea.style.display="block";       //顯現修改使用者資訊表單
	modifybutton_area.style.display="none"  //將修改使用者按鈕消失
}




	
