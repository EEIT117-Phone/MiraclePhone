$(function () {
    $(".usersmenu").mouseenter(function () {
        $(this).addClass("active");
		$('.urioption').show();
    }).mouseleave(function(){
    
    $(this).removeClass("active");
         $('.urioption').hide();
           });   

    
    
   
});