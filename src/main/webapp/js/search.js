$(document).ready(function () {
  //  Filter  預設選取不限
//  $('#phoneTypeOption1').attr('checked', 'checked');
//  $('#storageOption1').attr('checked', 'checked');

  //  Filter  不限/其他複選
  $('.form-check-input').each(function (i) {
    $('#phoneTypeOption' + (i + 2) + '').click(function () {
      if ($(this).is(':checked')) {
        $('#phoneTypeOption1').removeAttr('checked');
      } else {
        $('#phoneTypeOption1').attr('checked', 'checked');
      }
    })
  });

  $('#phoneTypeOption1').click(function () {
    if ($(this).is(':checked')) {
      $('#phoneTypeOption2,#phoneTypeOption3,#phoneTypeOption4,#phoneTypeOption5,#phoneTypeOption6,#phoneTypeOption7,#phoneTypeOption8').removeAttr('checked');
    }
    else {
      $('#phoneTypeOption1').attr('checked', 'checked');
    }
  });

  $('.form-check-input').each(function (i) {
    $('#storageOption' + (i + 2) + '').click(function () {
      if ($(this).is(':checked')) {
        $('#storageOption1').removeAttr('checked');
      } else {
        $('#storageOption1').attr('checked', 'checked');
      }
    })
  });

  $('#storageOption1').click(function () {
    if ($(this).is(':checked')) {
      $('#storageOption2,#storageOption3,#storageOption4,#storageOption5,#storageOption6').removeAttr('checked');
    }
    else {
      $('#storageOption1').attr('checked', 'checked');
    }
  });

  //  搜尋結果排序鈕切換
  $('#amountButton').click(function () {
    if ($(this).val() == '價格(低到高)↓') {
      $(this).val('價格(高到低)↑');
    } else {
      $(this).val('價格(低到高)↓');
    }
  })

});