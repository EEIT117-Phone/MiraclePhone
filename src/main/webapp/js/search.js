$('#inlineCheckboxiphone6,#inlineCheckboxiphone7,#inlineCheckboxiphone8,#inlineCheckboxiphonese,#inlineCheckboxiphonex,#inlineCheckboxiphone11,#inlineCheckboxiphonese2').click(function() {
  if ($(this).is(':checked')) {
    $('#inlineCheckboxTypeAll').removeAttr('checked');
  } else {
    $('#inlineCheckboxTypeAll').attr('checked', 'checked');
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