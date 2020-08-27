<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자페이지</title>
<%@ include file="template/head.jspf" %>
<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>
<style type="text/css">
	#content {
		width: 1500px;
		margin: 10px auto; 
		margin-top: 50px;
	}
	#content > h1{
		margin-bottom: 40px;
	}
	#content > h1:first-letter { 
		font-size: 45px;
		border-top: 3px solid blue;
		padding-top: 2px;
	}
	#top {
		width: 100%;
	}
	#content > table {
		width: 100%;
		text-align:center;
	}
	#content > table th {
		border: 1px solid gray;
		font-size: 18px;
		line-height: 40px;
	}
	#content > table td {
		border: 1px solid lightgray;
	}
	#content>table tr>th{
	
	}
	#content>table,#content>table tr>td{
        border-collapse: collapse; 
        border: 15px solid white; 
	}
	#classCode {
		width: 90px;
	}
	#hakbun {
		width: 90px;
	}
	#name, #teacher, #avg, #rate {
		width: 120px;
	}
	#phoneNumber{
		width: 150px;
	}
	#className{
		width: 300px;
	}
</style>
</head>
<body>
	<%@ include file="template/managerheader.jspf" %>
	<img id="top" src="img/adminPage.jpeg"/>
	<div id="content">
	<h1>관리자 페이지</h1>
		<!-- content start -->
		<table>
			<tr>
				<th id="hakbun">학번</th>
				<th id="name">이름</th>
				<th id="phoneNumber">전화번호</th>
				<th id="classCode">클래스코드</th>
				<th id="className">과정명</th>
				<th id="teacher">강사명</th>
				<th id="avg">성적평균</th>
				<th id="rate">출석률</th>
			</tr>
			<tr>
				<td>1</td>
				<td>홍길동</td>
				<td>010-0000-0000</td>
				<td>1</td>
				<td>디지털컨버전스 기반의 웹 개발자 양성 과정</td>
				<td>설민석 (t1)</td>
				<td>80.33</td>
				<td>93.22%</td>
			</tr>
		</table>
		<!-- content end -->
	</div>
	
	<%@include file="template/footer.jspf" %>

</body>
</html>