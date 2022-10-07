<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- list.jsp -->
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>글 목 록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  </head>
  <body>
  <div class="col-lg-9 themed-grid-col" style="margin-left: 200px;margin-right: 200px;">
    	<div class="row" align="center">
		<b>글 목 록</b>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
   <table class="table table-striped" >
   <tr class="table-info" align="center" style="--bs-table-striped-bg: #091835;">
   	<th width="10%"><font color=white>번호</font></th>
   	<th width="50%"><font color=white>제목</font></th>
   	<th><font color=white>작성일</font></th>
   	<th width="10%"><font color=white>조회수</font></th>
   </tr>
   <c:if test="${empty listBoard}">
   	<tr>
   		<td colspan="6"> 등록된 게시글이 없습니다.</td>
   	</tr>
   	</c:if>
   	<c:forEach var = "dto" items="${listBoard}">
   		<tr>
   			<td align ="right">${dto.num}</td>
   			<td>
   				<a href = "content_board.do?num=${dto.num}">${dto.subject}</a>
   				</td>
   				<td align="center">${dto.writer}</td>
				<td align="center">${dto.reg_date}</td>
				<td align="center">${dto.readcount}</td> 
				</tr>
				</c:forEach>
   </table>
   
  </div>
  </div>
  </body>
</html>