$( document ).ready(function(){
console.log(document.referrer);
console.log(document.getElementById("lastpage"))
var forgetpwd_form=document.getElementById("forgetpwd_area");
forgetpwd_form.style.display="none";
document.getElementById("lastpage").value=document.referrer;

$("#forgetpwd").click(function(){
	if($("#forgetpwd").data("status")=="1"){
		forgetpwd_form.style.display="none";
		$("#forgetpwd").data("status","0");
		return;
	}
	
	forgetpwd_form.style.display="";
	$("#forgetpwd").data("status","1");
	
	
})


})
	
	
	



	


