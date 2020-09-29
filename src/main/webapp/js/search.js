$(document).ready(function () {
  //  Filter  預設選取不限
  //  $('#phoneTypeOption1').attr('checked', 'checked');
  //  $('#storageOption1').attr('checked', 'checked');

  //  Filter  不限/其他複選

  var resultnum = $('.cardresult').length;
    $('#resultnum').text('(' + resultnum + ')');
    // console.log(resultnum);


  $("input[type='checkbox']").click(function () {
    var str = $("input:checkbox:checked").serialize();
    $.ajax({
      url: CONTEXT_PATH + 'search/ajaxresult?' + str,
      method: 'GET',
      success: function (result) {
        var res = "<form class='w-100 grid' id='results' > ";

        for (var i = 0; i < result.length; i++) {
          res += "<a target='_blank' href='http://localhost:8080/MiraclePhone/buyer?productId=" + result[i].productId + "'class='text-dark text-decoration-none cardresult'>" +
            "<div class='card card-result element-item mb-3'>" +
            "<img class='card-img' src='http://localhost:8080/MiraclePhone/fs/img/" + result[i].pic2 + "'alt='Card image cap'>" +
            "<div class='card-body search-card-body'>" +
            "<span class='card-title new d-none'>" + result[i].productId + "</span>" +
            "<span class='card-title'>[" + result[i].phoneSort + "] </span>" +
            "<span class='card-title'>" + result[i].phoneType + " </span>" +
            "<span class='card-title'>" + result[i].storage + " </span>" +
            "<span class='card-title'>" + result[i].color + "</span><br>" +
            "<p class='card-text d-inline-block mb-0 pr-1'>$</p>" +
            "<p class='card-text d-inline-block mb-0 amount pr-1'>" + result[i].amount + "</p>" +
            "<i class='fa fa-eye fa-fw text-secondary mr-0 pr-1' aria-hidden='true'></i>" +
            "<p class='card-city text-secondary d-inline-block mb-0 watch'>" + result[i].watch + "</p>" +
            "<p class='card-city mb-0 text-right'>" + result[i].county + result[i].district + "</p>" +
            "</div></div></a>"
        }
        res += "</form>";
        $('#resultnum').text('(' + Object.keys(result).length + ')');

        if(Object.keys(result).length == 0) {
          var noresult = "<p class='h5 ml-3 mt-5' id='noresult'>很抱歉，目前沒有符合條件的商品，您可以調整搜尋條件再試試看。</p></form>";
          $('#ajaxres').html(noresult);
        }else {
          $("#ajaxres").html(res);
        }
      }

    });
  });


  /*  $('.form-check-input').each(function (i) {
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
    });*/

  //  搜尋結果排序鈕切換
  $('#amountButton').click(function () {
    if ($(this).text() == '價格(低到高)↑') {
      $(this).text('價格(高到低)↓');
      $(this).removeAttr('data-sort-value', 'amount');
      $(this).attr('data-sort-value', 'amountDESC');
    } else {
      $(this).text('價格(低到高)↑');
      $(this).removeAttr('data-sort-value', 'amountDESC');
      $(this).attr('data-sort-value', 'amount');
    }
  })


  // init Isotope
  var $grid = $('.grid').isotope({
    itemSelector: '.element-item',
    layoutMode: 'fitRows',
    sortAscending: {
      watch: false,
      new: false,
      amount: true,
      amountDESC: false,
    },

    getSortData: {
      watch: '.watch parseInt',
      new: '.new parseInt',
      category: '[data-category]',
      amount: function (itemElem) {
        var amount = $(itemElem).find('.amount').text();
        return parseFloat(amount.replace(/,/g, ''));
      },
      amountDESC: function (itemElem) {
        var amountDESC = $(itemElem).find('.amount').text();
        return parseFloat(amountDESC.replace(/,/g, ''));
      }

    }
  });

  // bind sort button click
  $('.sort-by-button-group').on('click', 'button', function () {
    var sortValue = $(this).attr('data-sort-value');
    console.log(sortValue);
    $grid.isotope({ sortBy: sortValue });
  });

  // /* Get the sorting direction: asc||desc */
  // var direction = $(this).attr('data-sort-direction');

  // /* convert it to a boolean */
  // var isAscending = (direction == 'asc');
  // var newDirection = (isAscending) ? 'desc' : 'asc';

  // /* pass it to isotope */
  // $grid.isotope({ sortBy: sortValue, sortAscending: isAscending });

  // $(this).attr('data-sort-direction', newDirection);

  // // change is-checked class on buttons
  // $('.button-group').each(function (i, buttonGroup) {
  //   var $buttonGroup = $(buttonGroup);
  //   $buttonGroup.on('click', 'button', function () {
  //     $buttonGroup.find('.is-checked').removeClass('is-checked');
  //     $(this).addClass('is-checked');
  //   });
  // });

});