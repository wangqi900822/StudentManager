<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
<title>クイズ</title>

<script>
$(function() {
  $('#open').click(function() {$.ipop();});
});
</script>


<script>
(function($) {
  $.ipop = function() {
    var wx, wy;    // ウインドウの左上座標

    // ウインドウの座標を画面中央にする。
    wx = $(document).scrollLeft() + ($(window).width() - $('#ipop').outerWidth()) / 2;
    if (wx < 0) wx = 0;
    wy = $(document).scrollTop() + ($(window).height() - $('#ipop').outerHeight()) / 2;
    if (wy < 0) wy = 0;

    // ポップアップウインドウを表示する。
    $('#ipop').css({top: wy, left: wx}).fadeIn(100);

    // 閉じるボタンを押したとき
    $('#ipop_close').click(function() {$('#ipop').fadeOut(100);});

    // タイトルバーをドラッグしたとき
    $('#ipop_title').mousedown(function(e) {
      var mx = e.pageX;
      var my = e.pageY;
      $(document).on('mousemove.ipop', function(e) {
        wx += e.pageX - mx;
        wy += e.pageY - my;
        $('#ipop').css({top: wy, left: wx});
        mx = e.pageX;
        my = e.pageY;
        return false;
      }).one('mouseup', function(e) {
        $(document).off('mousemove.ipop');
      });
      return false;
    });
  }
})(jQuery);
</script>

</head>
<body>
<p>あなたの好きな食べ物は？</p>
  <p>
    <input type="radio" name="food" value="1">そば
    <input type="radio" name="food" value="2">うどん
    <input type="radio" name="food" value="3">ラーメン
  </p>
<a href="javascript:void(0)" id="open">開く</a>

<div id="ipop">
  <div id="ipop_close">×</div>
  <div id="ipop_title">タイトル</div>
  コンテンツ<br>
  コンテンツ
</div>



  <p1>おばけー</p1>


  <p>たぬき暗号（<em id="answer">ここにマウスを重ねると解読します</em>）</p>
<p>ぼ<span>た</span>く<span>た</span>はき<span>た</span>みをあ<span>た</span>いしていま<span>た</span>す<span>た</span>。</p>



<center><img src="./images/color-logo.gif"/></center>
<h1 align="center"><a href="all" rel="external nofollow" rel="external nofollow" >进入学員管理主页</a></h1>
<img src="./images/color-logo.gif" />
</body>
</html>