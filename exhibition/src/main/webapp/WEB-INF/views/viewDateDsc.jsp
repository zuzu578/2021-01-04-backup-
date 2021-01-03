<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://kit.fontawesome.com/8c9485b50e.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<style>
*{
padding:0;
margin:0;

}
.main-contents{
	width:1000px;
	margin:0 auto;
	margin-top:45px;
	
}

.nav-container2{
background-color:#e3f2fd;
 font-weight: bold;
 display:flex;
 justify-content:center;
 border-bottom: 1px solid gray;
 align-items:center;
}
a{
	color:black;
	text-decoration: none;
}
.nav-items2{
	
	

}
.nav-items{
	text-align:left;
	
}
.left{
	width:200px;
	border-right:1px solid gray;
	height:500px;
	
}
.main{
	display:flex;
	
}
.left-items{
	padding:10px;
	font-weight:bold;
	
	
}
.center{
	padding:20px;
	width:1000px;
	
	
}
.goods{
	padding-top:10px;
	font-weight:bold;
	color:orange;
	border-top:2px solid gray;
	border-bottom:2px solid gray;
	
	
}

.button-area{
	text-align:right;
	margin-top:100px;
	
}
.nav-items2{
	padding:20px;
	
}
.nav-items img{
	width:70%;
}
.paging-items{
	margin-top:100px;
	
}
.search-items{
  width:400px;
  float:right;
  
}
.sort-items{
	display:flex;
	width:200px;
	float:left;
}

</style>
<title>Insert title here</title>
</head>
<body>


<nav class="nav-container2">
<div class="nav-items"><a href="http://localhost:8080/project/home"><img src="https://www.freelogodesign.org/file/app/client/thumb/a5ae1939-7ab5-4c73-954e-91a6a7299dd3_200x200.png?1609120650640"></a> </div>
<div class="nav-items2"><a href="">About us</a> </div>
<div class="nav-items2"><a href="http://localhost:8080/project/paint">그림 </a> </div>
<div class="nav-items2"><a href=""> 사진</a></div>
<div class="nav-items2"><a href="">공예</a> </div>
<div class="nav-items2"><a href="">음악</a> </div>
<div class="nav-items2"><a href="">게시판</a> </div>
<div class="nav-items2"><a href="http://localhost:8080/project/RankingPage">게시판 랭킹</a> </div>
<div class="nav-items2"><a href="http://localhost:8080/project/finduser">유저 검색</a> </div>


</nav>

 
   <div class="main-contents">
  	<div class="sort-items">
  	<div class="sort">
  	
  		<form action="Sort_items" method="get">
  		<select onchange="this.form.submit()" id="sort" name="sort" class="form-select" aria-label="Default select example">
			  <option>==정렬방식 선택==</option>
			  <option  value="viewDsc">조회수 기준 오름차순 정렬</option>
			  <option value="viewAsc">조회수 기준 내림차순 정렬 </option>
			  <option value="dateDsc">최근 게시물 보기 </option>
			  <option value="dateAsc">오래된 게시물 보기 </option>
			  
			 
		</select>
		
		</form>
		</div>
		
  	
  	</div>
   <div class="search-items">
   	<form action="SearchBoard" method="GET">
   		
<div class="input-group mb-3">
  <input type="text"  name="boardtopic" class="form-control" placeholder="게시물제목 검색 + Enter" aria-label="Recipient's username" aria-describedby="basic-addon2">
  
</div>
   	
   	</form>
   
   </div>
   
 <table class="table table-striped" >
      <tr>
         <td>번호</td>
         <td>이름</td>
         <td>제목</td>
         <td>날짜</td>
         <td>조회수</td>
      </tr>
      <c:forEach var="dto" items="${ViewDateDsc}">
      <tr>
         <td>${dto.board_num}</td>
         <td>${dto.userid}</td>
         <td>
            <c:forEach begin="0" end="${dto.bIndent}">ㄴ</c:forEach>
            <a href="board_view?board_num=${dto.board_num}">${dto.boardtopic}</a></td>
         <td>${dto.rdate}</td>
         <td>${dto.nClick}</td>
      </tr>
      </c:forEach>
      <!-- 
      <tr>
      <c:if test="${logout=='Y'}">
      	<a href="/login">login</a>
      </c:if>
         <c:if test="${logout!='Y'}">
      	<a href="logout">logout</a>
      	
      </c:if>
       
         
      </tr>
      -->
         
   </table>
   <div class="paging-items">
   
   
  <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" href="http://localhost:8080/project/previous" >Previous</a>
    </li>

    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    
    <li class="page-item">
      <a class="page-link" href="http://localhost:8080/project/previous">Next</a>
    </li>
  </ul>
</nav>
</div>
  
   <div class="button-area">
   <button type="button" class="btn btn-primary"><a href="http://localhost:8080/project/board_new">글작성하기</a></button>
         <button type="button" class="btn btn-info"><a href="http://localhost:8080/project/login">로그인 하러가기</a></button>
          <button type="button" class="btn btn-danger"><a href="http://localhost:8080/project/Signup">계정이 없으신가요?</a></button>
   
   </div>
   </div>
   <footer class="footer-items">
   
   
   
   </footer>
   
  
  