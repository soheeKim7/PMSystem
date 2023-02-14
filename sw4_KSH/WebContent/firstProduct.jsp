<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우선 생산 제품 화면</title>
<style type="text/css">
button { background-color:#FAFAB4; border-color:#FAFAB4; float:left; 
		  width:100px; height:40px; font-size:18px; 
		  margin-right:3px; margin-left:3px; margin-top:1px; margin-botton:1px;	}
fieldset legent{font-size:16px;}
</style>
</head>
<body>
<h1>우선 생산 제품 화면</h1>

<fieldset>
	<legend >재고수량이 목표수량의 20%미만인 우선 생산해야할 제품</legend>
	<table border="1" style="text-align: center">
	<tr> <th>제품이름</th>  <th>생산해야할 수량</th>  </tr>
	
	<c:forEach items="${list }" var="vo">
		<tr> <td>${vo.pname } </td>  <td>${vo.pnum }  </td>  </tr>
	</c:forEach>
	</table>
</fieldset>
<br>

<form action="/Production/main">
<button name="main">메인화면</button>
</form>

</body>
</html>