<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table, th, td {
    border-style: solid;
    border-width: 1px;
    text-align : center;
}

ul{
    list-style-type: none;
}

li {
    display: inline-block;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<meta charset="UTF-8">
<title>게시판 메인 페이지</title>
</head>
<body>
    <h1>게시판 메인</h1>
    <a href="register"><input type="button" value="글작성"></a>
    <hr>
    <table>
        <thead>
          <tr>
              <th style="width: 60px">번호</th>
              <th style="width: 700px">제목</th>
              <th style="width: 60px">작성자</th>
              <th style="width: 100px">작성일</th>
          </tr>
        </thead>
        <tbody>
            <c:forEach var="vo" items="${list }">
                <tr>
                    <td>${vo.bno }</td>
                    <td><a href="detail?bno=${vo.bno }&page=${pageMaker.criteria.page}">${vo.title }</a></td>
                    <td>${vo.userid }</td>
                    <fmt:formatDate value="${vo.cdate }"
                    	pattern="yyyy-MM-dd HH:mm:ss"
                    	var="cdate"/>
                    <td>${cdate }</td>
                </tr> 
            
            </c:forEach>
        </tbody>        
    </table>
    
    <hr>
    <ul>
        <c:if test="${pageMaker.hasPrev }">
            <li><a href="list?page=${pageMaker.startPageNo - 1}">이전</a></li>
        </c:if>
        <c:forEach begin="${pageMaker.startPageNo }" 
        end="${pageMaker.endPageNo }" var="num">
            <li><a href="list?page=${num }">${num }</a></li>
        </c:forEach>
        <c:if test="${pageMaker.hasNext }">
            <li><a href="list?page=${pageMaker.endPageNo + 1}">다음</a></li>
        </c:if>
    </ul>
	
	<!-- BoardController -> registerPOST() 에서 보낸 데이터 저장 -->
	<input id="insertAlert" type="hidden" value="${insert_result }">
	
	<script type="text/javascript">
		$(document).ready(function(){
			confirmInsertResult();
			function confirmInsertResult(){
				var result = $('#insertAlert').val();
				if(result == 'success'){
					alert('새 글 작성 성공');
				} else if(result == 'fail'){
					alert('새 글 작성 실패');
				}
			}
		});
	</script>
</body>
</html>















