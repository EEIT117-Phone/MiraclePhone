$( document ).ready(function(){
console.log(document.referrer);
console.log(document.getElementById("lastpage"))
var forgetpwd_form=document.getElementById("forgetpwd_area");
forgetpwd_form.style.display="none";
document.getElementById("lastpage").value=document.referrer;
$("#forgetpwd").click(function(){
	forgetpwd_form.style.display="";
})
})
	
	
	



	


