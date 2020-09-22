//精選推薦輪播
$(".owl-carousel").owlCarousel({
    items: 5, // 一次輪播幾個項目
    loop: true, // 循環輪播
    nav: true, // 導航文字
    autoplay: true, // 自動輪播
    autoplayTimeout: 4000, // 切換時間
    autoplayHoverPause: true, // 滑鼠經過時暫停
    navText: ["<", ">"],
    dotsEach: 5,
    //		autoWidth: true,
})
