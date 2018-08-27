<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
<title>クイズ</title>
<script>
	$(function() {
$('#open').click(function() {
$.ipop();
});
});
</script>
<script>
$(function() {
  $('#new').click(function() {
    $('<div class="sticky">Drag & Double Click!</div>')
      .appendTo('body')
      .draggable()
      .dblclick(function() {
        $(this).wrapInner('<textarea></textarea>')
          .find('textarea')
          .focus()
          .select()
          .blur(function() {
            $(this).parent().html($(this).val());
          });
      });
  });
});
</script>
<style>
.sticky {
  width: 250px;
  height: 50px;
  background-color: #aaf;
  cursor: pointer;
}
textarea {
  width: 100%;
  height: 100%;
}
</style>
<script>
	$(function() {
		$('td').mousedown(function() {
			if ($(this).css('backgroundColor') == 'yellow') {
				$(this).css('backgroundColor', 'white');
			} else {
				$(this).css('backgroundColor', 'yellow');
			}
		});
	});
</script>


<script>
	$(function() {
		var page = 0;
		function draw() {
			$('#page').html(page + 1);
			$('tr').hide();
			$('tr:first,tr:gt(' + page * 10 + '):lt(10)').show();
		}
		$('#prev').click(function() {
			if (page > 0) {
				page--;
				draw();
			}
		});
		$('#next').click(function() {
			if (page < ($('tr').size() - 1) / 10 - 1) {
				page++;
				draw();
			}
		});
		draw();
	});
</script>
<style>
td, th {
	border: 1px solid black;
	padding: 2px;
}

#prev, #next {
	color: red;
	cursor: pointer;
}
</style>
<style>
td {
	background-color: white;
	border: 1px solid black;
	padding: 8px;
	cursor: pointer;
}
</style>
</head>
<body>
	<p>あなたの好きな食べ物は？</p>
	<p>
		<input type="radio" name="food" value="1">そば <input
			type="radio" name="food" value="2">うどん <input type="radio"
			name="food" value="3">ラーメン
	</p>
	<a href="javascript:void(0)" id="open">開く</a>

	<div id="ipop">
		<div id="ipop_close">×</div>
		<div id="ipop_title">タイトル</div>
		コンテンツ<br> コンテンツ
	</div>
	<table>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
	</table>


	<p1>おばけー</p1>

	<span id="prev">＜</span>
	<span id="page"></span>
	<span id="next">＞</span>
	<table>
		<tr>
			<th>名前</th>
			<th>消費ＭＰ</th>
		</tr>
		<tr>
			<td>メラ</td>
			<td>2</td>
		</tr>
		<tr>
			<td>メラミ</td>
			<td>6</td>
		</tr>

		・・・・・中略・・・・・

		<tr>
			<td>リレミト</td>
			<td>3</td>
		</tr>
		<tr>
			<td>トラマナ</td>
			<td>2</td>
		</tr>
	</table>
	<p>
		たぬき暗号（<em id="answer">ここにマウスを重ねると解読します</em>）
	</p>
	<p>
		ぼ<span>た</span>く<span>た</span>はき<span>た</span>みをあ<span>た</span>いしていま<span>た</span>す<span>た</span>。
	</p>



	<center>
		<img src="./images/color-logo.gif" />
	</center>
	<h1 align="center">
		<a href="all" rel="external nofollow" rel="external nofollow">进入学員管理主页</a>
	</h1>
	<img src="./images/color-logo.gif" />
</body>
</html>