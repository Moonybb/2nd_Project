<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주점</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
	#content > h1{
		text-align:center;
		margin: 50px auto 30px auto;
	}
	#content > h1:first-letter { 
		font-size: 45px;
		border-top: 3px solid blue;
		padding-top: 2px;
	}
	#className{
		width: 230px;
	}
	#classCode, #name, #java, #web, #framework{
		width:120px;
	}
	#num{
		width: 60px;
	}
	#content{
		
	}
	#content>table{
		margin: 15px auto;
	}
	#content>table tr>th{
		background-color: lightblue;
		height: 35px;
	    border-radius: 20px;
	}
	#content>table tr>td{
		height: 25px;
		text-align: center;
	}
	#content>table,#content>table tr>th,#content>table tr>td{
        border-collapse: collapse; 
        border: 5px solid white; 
	}
	#checkbox{
		text-align: center;
	}
	select{
		display: inline-block;
		width: 100px;
		height: 32px;
		text-align:center;
	}
	
	button{
		width:50px;
	    background-color: royalblue;
	    border: none;
	    color: white;
	    padding: 7px 0;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 15px;
	    margin: 4px;
	    margin-top:30px;
	    cursor: pointer;
	    border-radius: 10px;
	    text-align: center;
    }
</style>
</head>
<body>
	<%@ include file="template/managerheader.jspf" %>
	
	<!-- content start -->
	<div id="content">
	<h1>학생 성적 관리</h1>
		<div id="checkbox">
			<form action="scoreClassView.jb" method="post">
				<select name="class123">
					<option value="1">1반</option>
					<option value="2">2반</option>
					<option value="3">3반</option>
				</select>
				<button type="submit">설정</button>
			</form>
		</div>
		<table>
			<tr>
				<th id="classCode">클래스 코드</th>
				<th id="className">과정명</th>
				<th id="num">학번</th>
				<th id="name">이름</th>
				<th id="java">자바</th>
				<th id="web">웹</th>
				<th id="framework">프레임워크</th>
			</tr>
			<c:forEach items="${scoreAllView }" var="bean">
				<tr id="student">
					<td>${bean.classCode }</td>
					<td>${bean.className }</td>
					<td>${bean.hakbun }</td>
					<td>${bean.name }</td>
					<td>${bean.gradeJava }</td>
					<td>${bean.gradeWeb }</td>
					<td>${bean.gradeFrame }</td>
				</tr>
			</c:forEach>
		</table>
			
		<!-- content end -->
	</div>
	
	<%@include file="template/footer.jspf" %>
	

</body>
</html>