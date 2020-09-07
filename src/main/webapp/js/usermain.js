$(function () {
var usercounty=document.getElementById("usercounty").value
var userdistrict=document.getElementById("userdistrict").value
var userzipcode=document.getElementById("userzipcode").value
var useraddress=usercounty+userdistrict+" "+"郵遞區號:"+userzipcode
var address=document.getElementById("address")
address.innerHTML=useraddress
});


	
