function adjustHeight(ctrl) {
  $(ctrl).css({'height':'auto','overflow-y':'hidden'}).height(ctrl.scrollHeight);
}
$('textarea').each(function () {
  adjustHeight(this);
}).on('input', function () {
  adjustHeight(this);
});
