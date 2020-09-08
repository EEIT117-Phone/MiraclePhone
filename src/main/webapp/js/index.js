$(function() {
    let slideNum = 0;

    move_div();

    $(window).resize(move_div);

    function move_div() {


        let windowWidthmodify = $(window).width();


        let move = 0 - windowWidthmodify * slideNum;
        $("ul.pictureslides").css("left", move);

        let windowWidth = $(window).width();

        $(".cobtainer, ul.pictureslides li").width(windowWidth);
        $("ul.pictureslides").width(4 * windowWidth);

        console.log($("ul.pictureslides").css("width"));


        let divWidth = windowWidth * 40 / 100;


        let left = (windowWidth - divWidth) / 2;


        $("#inputarea").css("left", left).width(divWidth)

    }


    let slideCount = $(".pictureslides li").length;
    let lastIndex = slideCount - 1;
    let s = window.setInterval(automatic, 5000);


    function automatic() {
        slideNum++;
        if (slideNum > lastIndex) slideNum = 0;
        show();
    }

    function show() {
        let windowWidths = $(window).width();


        let move = 0 - windowWidths * slideNum;
        $("ul.pictureslides").css("left", move);

    }



 $(".usersmenu").click(function(){
                $(this).toggleClass("active");
            })
});