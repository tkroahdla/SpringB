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
    <div class="panel-body" id="list" style="display:block"></div>
    <div class="panel-body" id="wform" style="display:none" >
     <form class="form-horizontal" id= "frm">
    <div class="form-group">
      <label class="control-label col-sm-2" for="title">제목 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="title" name="title">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="content">내용 :</label>
      <div class="col-sm-10">          
        <textarea rows="10" class="form-control" name="content"></textarea>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="writer">작성자 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="writer" name="writer">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success btn-sm" onclick="goInsert()">등록</button>
        <button type="reset" class="btn btn-success btn-sm">취소</button>
      </div>
    </div>
  </form>
</div>
    <div class="panel-footer">스인개 체고!!</div>
  </div>
</div>
</body>
<script>
$(document).ready(()=>{ // html 로드 후 바로 실행
	loadList();
})

function loadList(){
	$.ajax({
		url : "/myapp1/boardList.do",
		type : "get",
		dataType : "json",
		success : htmlView,
		error : function(){
			alert("error")
		}
	})
}

function htmlView(data){ // 통신 성공 시 실행
	/* alert(data) */
	var result = "<table class = 'table table-bordered table-hover'>"
	result += "<tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th></tr>"
	$.each(data, (index,vo)=>{
		result += "<tr>";
		result += "<td>"+vo.idx+"</td>";
		result += "<td>"+vo.title+"</td>";
		result += "<td>"+vo.writer+"</td>";
		result += "<td>"+vo.indate+"</td>";
		result += "<td>"+vo.count+"</td>";
		result += "<td><button class='btn btn-success btn-sm' onclick='goDel("+vo.idx+")'>삭제</button></td></tr>"
	})
	result +="<tr><td colspan='5'><button class='btn btn-success btn-sm' onclick='goView()'>글쓰기</button></td></tr>";
	result += "</table>"
		
	$("#list").html(result)
}

function goView(){
	if($("#wform").css("display")=="none"){
		$("#wform").slideDown();
	}else{
		$("#wform").slideUp();
	}
}

function goInsert(){
	var fdata = $("#frm").serialize()
	$.ajax({
		url : "/myapp1/boardInsert.do",
		type : "post",
		data : fdata,
		success : loadList,
		error : function(){
			alert("error")
		}
	})
	$("#title").val("")
	$("#content").val("")
	$("#writer").val("")
	$("#init").trigger("click")
	$("#wform").css("display","none")
}
 
function goDel(idx){
	$.ajax({
		url : "/myapp1/boardDelete.do",
		type : "get",
		data : {"idx" : idx},
		success : loadList,
		error : function(){
			alert("error")
		}
	})
}
</script>
</html>
