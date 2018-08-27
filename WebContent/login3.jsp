<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
<title>クイズ</title>
<script>
$(function() {
  $('input').click(function() {
    if ($(this).val() == 2) alert('正解！');
    else alert('はずれ！');
  });
});
</script>
<script type="text/javascript">

function checkStr(){
  var str = document.getElementById("dat").value;
  if (str.match(/[^0-9 ０-９ a-z ａ-ｚ A-Z Ａ-Ｚ]/g)){
    alert("英数字以外が含まれています\n（" + str.match(/[^0-9 ０-９ a-z ａ-ｚ A-Z Ａ-Ｚ]/g) + "）");
  } else {
    alert("入力OKです！");
  }
}

</script>


<script type="text/javascript">

function checkMail(){
  var str = document.getElementById("dat").value;
  if(str.match(/^([a-z0-9_\.\-])+@([a-z0-9_\.\-])+[^.]$/i)){
    alert("入力OKです！");
  }else{
    alert("メールアドレスの形式が不正です！");
  }
}

</script>


<script type="text/javascript">

function checkData(){
  var str = document.getElementById("dat").value;
  if(str.trim().length > 0){
    alert("入力OKです！");
  }else{
    alert("入力して下さい！");
  }
}

</script>



<script type="text/javascript">

function checkLen(){
  var str = document.getElementById("dat").value;
  if(str.length > 10){
    alert("10 文字以内で入力して下さい！");
  }else{
    alert("入力OKです！");
  }
}




<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
<title>クイズ</title>
<script>
$(function() {
  $('input').click(function() {
    if ($(this).val() == 2) alert('正解！');
    else alert('はずれ！');
  });
});
</script>




</script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
<script>
$(function() {
  $('p').click(function() {$(this).fadeOut('slow');});
});

</script>

<script>
$(function() {
  $('#start').click(function() {
    $(this).hide();

    // 変数初期化
    var FLEN = 16;                  // フィールドの大きさ
    var px = 0, py = 1;             // プレイヤー座標
    var pd = 1;                     // プレイヤー方向(0:上 1:右 2:下 3:左)
    var score = 0;                  // 得点

    // フィールドを表示する。
    var field = '';
    for (var y = 0; y < FLEN; y++) {
      for (var x = 0; x < FLEN; x++) {
        field += '<span id="field_' + x + '_' + y + '">';
        if (x == 0 || x == FLEN - 1 || y == 0 || y == FLEN - 1) field += '■';
        else field += '□';
        field += '</span>';
      }
      field += '<br>';
    }
    $('#field').html(field);

    // マウス押下時に移動方向を時計回りに90度動かす。
    $(document).mousedown(function() {
      pd = (pd + 1) % 4;
      return false;
    })

    // 100ms毎に繰り返し
    var id = setInterval(function() {
      // 移動と当たり判定
      if (pd == 0) py--;
      else if (pd == 1) px++;
      else if (pd == 2) py++;
      else px--;
      var item = $('#field_' + px + '_' + py);
      if (item.html() == '□') {
        score++;
        $('#score').html(score);
      } else {
        clearInterval(id);
        $('#start').show();
      }
      item.html('●');
    }, 100);
  });
});

</script>



<script>
$(function() {
  $('#answer').hover(
    function() {$('span').hide();},
    function() {$('span').show();}
  );
});
</script>




<script>
$(function() {
  $('a').click(function() {
    var NUM = 5;                    // チェックボックス数
    var SIZE = 200;                 // ステージの大きさ
    var count = 0;                  // 現在チェックされている数
    var st = new Date().getTime();  // 開始時間
    $('body').empty();

    // チェックボックスの新しい位置を返す。
    function newPos() {
      return {
        left: Math.floor(Math.random() * SIZE),
        top: Math.floor(Math.random() * SIZE)
      };
    }

    // チェックボックスの生成・アニメーションの設定
    for (var i = 0; i < NUM; i++) {
      $('<input type="checkbox">')
      .appendTo('body')
      .css('position', 'absolute')
      .css(newPos())
      .each(function() {
        $(this).animate(newPos(), 3000, arguments.callee);
      });
    }

    // チェックボックスが押されたときの処理
    $('input').click(function() {
      $(this).stop().attr('disabled', 'disabled');
      var t = (new Date().getTime() - st) / 1000;
      if (++count >= NUM) alert('クリア！所要時間：' + t + '秒');
    });

    return false;
  });
});
</script>
<title>Insert title here</title>
</head>
  </html>
<div id="field"></div>
<p><a id="start" href="javascript:void(0)">スタート</a> 得点：<span id="score"></span></p>


<div style="background-color : #CCC;">
  <div style="display:inline-flex; align-items: center;">
    <input id="dat" type="text" placeholder="こちらに入力して下さい">　
    <input type="button" value="OK" onclick="checkStr()">
  </div>
</div>



<div style="background-color : #CCC;">
  <div style="display:inline-flex; align-items: center;">
    <input id="dat" type="text" placeholder="こちらに入力して下さい">　
    <input type="button" value="OK" onclick="checkMail()">
  </div>
</div>



<div style="background-color : #CCC;">
  <div style="display:inline-flex; align-items: center;">
    <input id="dat" type="text" placeholder="こちらに入力して下さい">　
    <input type="button" value="OK" onclick="checkData()">
  </div>
</div>


<div style="background-color:#CCC;">
  10 文字以内で入力して下さい。
  <div style="display:inline-flex; align-items: center;">
    <input id="dat" type="text" placeholder="こちらに入力して下さい">　
    <input type="button" value="OK" onclick="checkLen()">
  </div>
</div>
<center><img src="./images/color-logo.gif"/></center>
<h1 align="center"><a href="all" rel="external nofollow" rel="external nofollow" >进入学員管理主页</a></h1>
<img src="./images/color-logo.gif" />
</body>
</html>