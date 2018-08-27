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
  $('input').click(function() {
    if ($(this).val() == 2) alert('正解！');
    else alert('はずれ！');
  });
});
</script>

<script>
$(function() {
  $('p1').click(function() {$(this).fadeOut('slow');});
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


<script>
$(function() {
  var round = 0;
  var remain;
  var field = [
    [1, "●○●○○"],
    [1, "●○○○●○●"],
    [2, "●○●○●○●○●"],
    [2, "●○●●○●●●○"],
    [2, "●●○●●○○●●●○●○●●"]
  ];

  // 面の開始
  function start() {
    remain = field[round][0];
    $('#field')
    .html($.map(field[round][1].split(''), function(i) {
      return '<div>' + i + '</div>';
    }).join(''));

    $('#round').text(round + 1);
    $('#remain').text(remain);
  }
  start();

  $('#field').sortable({
    axis: 'x',
    update: function(e, u) {
      // 裏返す
      var color = u.item.text();
      $.each(['prev', 'next'], function(i, dir) {
        var rev = false;
        (function (item) {
          if (item.length < 1) return;
          if (item.text() == color) rev = true;
          else arguments.callee(item[dir]());
          if (rev) item.text(color);
        })(u.item[dir]());
      });

      // クリアチェック
      $('#remain').text(--remain);
      if (!$('#field div').is(':contains("○")')) {
        if (++round >= field.length) {
          alert("オールクリア！");
        } else {
          alert("クリア！");
          start();
        }
      }

      // ゲームオーバーチェック
      if (remain <= 0) {
        $('#field').sortable('destroy');
        alert("ゲームオーバー");
      }
    }
  });
});
</script>
<style>
div {
  float: left;
  cursor: pointer;
}
</style>
<title>Insert title here</title>
</head>
<body>
<p>あなたの好きな食べ物は？</p>
  <p>
    <input type="radio" name="food" value="1">そば
    <input type="radio" name="food" value="2">うどん
    <input type="radio" name="food" value="3">ラーメン
  </p>
<script>
$(function() {
  var round = 0;
  var remain;
  var field = [
    [1, "●○●○○"],
    [1, "●○○○●○●"],
    [2, "●○●○●○●○●"],
    [2, "●○●●○●●●○"],
    [2, "●●○●●○○●●●○●○●●"]
  ];

  // 面の開始
  function start() {
    remain = field[round][0];
    $('#field')
    .html($.map(field[round][1].split(''), function(i) {
      return '<div>' + i + '</div>';
    }).join(''));

    $('#round').text(round + 1);
    $('#remain').text(remain);
  }
  start();

  $('#field').sortable({
    axis: 'x',
    update: function(e, u) {
      // 裏返す
      var color = u.item.text();
      $.each(['prev', 'next'], function(i, dir) {
        var rev = false;
        (function (item) {
          if (item.length < 1) return;
          if (item.text() == color) rev = true;
          else arguments.callee(item[dir]());
          if (rev) item.text(color);
        })(u.item[dir]());
      });

      // クリアチェック
      $('#remain').text(--remain);
      if (!$('#field div').is(':contains("○")')) {
        if (++round >= field.length) {
          alert("オールクリア！");
        } else {
          alert("クリア！");
          start();
        }
      }

      // ゲームオーバーチェック
      if (remain <= 0) {
        $('#field').sortable('destroy');
        alert("ゲームオーバー");
      }
    }
  });
});
</script>
<style>
div {
  float: left;
  cursor: pointer;
}
</style>

  <p1>おばけー</p1>


  <p>たぬき暗号（<em id="answer">ここにマウスを重ねると解読します</em>）</p>
<p>ぼ<span>た</span>く<span>た</span>はき<span>た</span>みをあ<span>た</span>いしていま<span>た</span>す<span>た</span>。</p>



<center><img src="./images/color-logo.gif"/></center>
<h1 align="center"><a href="all" rel="external nofollow" rel="external nofollow" >进入学員管理主页</a></h1>
<img src="./images/color-logo.gif" />
</body>
</html>