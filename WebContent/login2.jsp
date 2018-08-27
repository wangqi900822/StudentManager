<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Insert title here</title>
</head>
<body>
<div style="background-color : #CCC;">
  <div style="display:inline-flex; align-items: center;">
    <input id="dat" type="text" placeholder="こちらに入力して下さい">　
    <input type="button" value="OK" onclick="checkStr()">
  </div>
</div>

<center><img src="./images/color-logo.gif"/></center>
<h1 align="center"><a href="all" rel="external nofollow" rel="external nofollow" >进入学員管理主页</a></h1>
<img src="./images/header.jpg" />
<h1>hell word</h1>
<h2>hell word</h2>
<h3>hell word</h3>
<h4>hell word</h4>
<h5>hell word</h5>
<h6>hell word</h6>

<a href="http://www.apple.com/">apple</a>


<table>
 <tr>
  <th>name</th>
  <th>japanese</th>
  <th>math</th>
  <th>English</th>
  </tr>

  <tr>
  <td>Mike</td>
  <td>78</td>
  <td>86</td>
 <td>54</td>
 </tr>

 <tr>
  <td>Nick</td>
  <td>54</td>
  <td>12</td>
  <td>90</td>

  </tr>

</table>


<p>
  Hello world!
  </p>

  <p>
    Hello world!<span>Hello world!</span>
    </p>

    <p>
     Hello.<br>
     I an studying HTML.
     </p>





     <form>
     <input type="text">

     </form>


<form>
   <input type="checkbox">baseball
   </form>

   <form >
     <input type="radio" name="sports" value="0">baseball
     <input type="radio" name="sports" value="1">soccer
     </form>


   <form>
    <select>
     <option value="0">baseball</option>
     <option value="1">soccer</option>
     <option value="2">tennis</option>
      </select>
   </form>



   <form>
    <input placeholder="入力してください" ></input>
    <input id="addname" type="text" placeholder="氏名" name="name" />
    </form>


   <form>
    <label>
     <input type="checkbox">このサイトは役に立った
     </label>
     </form>



     <form>
     <input type="submit">
     </form>


     <p>
      順序なし
      <ul>
       <li>野球</li>
       <li>サッカー</li>
       <li>バレーボール</li>
       </ul>
       順序あり
       <ol>
        <li>野球</li>
        <li>サッカー</li>
        <li>バレーボール</li>
        </ol>
        <p>



        <p>
         引用したい引用したい
         <blockquote>
            引用したい引用したい  引用したい引用したい  引用したい引用したい
             </blockquote>
               引用したい引用したい  引用したい引用したい
               </p>


         <code>
         <pre>
          x = 1
          if x = 1
             puts "xの値は1です"
              else
               pute "xの値は1以外です"
             end
             </pre>
            </code>


       <ruby>
       子守熊
         <rt>コアラ</rt>
         </ruby>


       <p>
         Hello world! <strong>Hello world!</strong>
         </p>


         <p>
           Hello world! <i>Hello world!</i>
           </p>

</body>
</html>