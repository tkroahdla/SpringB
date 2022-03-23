<%@page import="kr.smhrd.domain.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>게시판 만들기 복습!!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>게시판 만들기 복습!!</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Panel Heading</div>
    <div class="panel-body">
    <table class="table table-bordered table-hover">
    <tr>
    	<th>번호</th>
    	<th>제목</th>
    	<th>작성자</th>
    	<th>작성일</th>
    	<th>조회수</th>
    </tr>
    <tr>
    	<td colspan="5">
    		<!--페이지를 이동하는 것이 아니라 요청!! 포트번호 뒤쪽부터!  -->
    		<button class="btn btn-success btn-sm" onclick="location.href='/myapp/boardForm.do'">글쓰기</button>
    	</td>
    </table>
</div>
    <div class="panel-footer">스인개 체고!!</div>
  </div>
</div>

</body>
</html>
