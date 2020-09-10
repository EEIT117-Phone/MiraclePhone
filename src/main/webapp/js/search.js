$('#checkedOption2,#checkedOption3,#checkedOption4,#checkedOption5,#checkedOption6,#checkedOption7,#checkedOption8').click(function() {
  if ($(this).is(':checked')) {
    $('#inlineCheckboxType1').removeAttr('checked');
  } else {
    $('#inlineCheckboxType1').attr('checked', 'checked');
  }
});

$('#inlineCheckboxTypeAll').click(function() {
  if ($(this).is(':checked')) {
    $('#inlineCheckboxiphone6,#inlineCheckboxiphone7,#inlineCheckboxiphone8,#inlineCheckboxiphonese,#inlineCheckboxiphonex,#inlineCheckboxiphone11,#inlineCheckboxiphonese2').removeAttr('checked');
$('#inlineCheckboxTypeAll').attr('checked', 'checked');
  } else {
    $('#inlineCheckboxTypeAll').attr('checked', 'checked');
  }
});




$('#price').mdbRange({
  width: '50%',
  single: {
    active: true,
    multi: {
      active: true,
      rangeLength: 1
    },
  }
});