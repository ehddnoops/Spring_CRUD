<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>작성 글 확인 페이지</title>
</head>
<body>
	<h2>글보기</h2>

	<div>
		<p>글 번호 : ${vo.bno }</p>
	</div>
	<div>
		<p>
			제목 <input type="text" value="${vo.title }" readonly="readonly">
		</p>
	</div>
	<div>
		<p>작성자 : ${vo.userid }</p>
		<fmt:formatDate value="${vo.cdate }" pattern="yyyy-MM-dd HH:mm:ss"
			var="cdate" />
		<p>작성일 : ${cdate }</p>
	</div>
	<div>
		<textarea rows="20" cols="120" readonly="readonly">${vo.content }</textarea>
	</div>
	<div>
		<a href="list?page=${page }"><input type="button" value="글 목록"></a>
		<a href="update?bno=${vo.bno }&page=${page}"><input type="button" value="글수정"></a>
		<a href="delete?bno=${vo.bno }"><input type="button" value="글삭제"></a>
	</div>

</body>
</html>











