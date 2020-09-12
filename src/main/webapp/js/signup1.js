// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  window.addEventListener('load', function () {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation')

    // Loop over them and prevent submission
    Array.prototype.filter.call(forms, function (form) {
      form.addEventListener('submit', function (event) {
        if (form.checkValidity() === false) {
          event.preventDefault()
          event.stopPropagation()
        }
        form.classList.add('was-validated')
      }, false)
    })
  }, false)

$("#twzipcode").twzipcode({ //外掛地址
zipcodeIntoDistrict: true, // 郵遞區號自動顯示在區別選單中
css: ["city form-control", "town form-control"], // 自訂 "城市"、"地別" class 名稱 
countyName: "city", // 自訂城市 select 標籤的 name 值
districtName: "town" // 自訂區別 select 標籤的 name 值
});   
}())
