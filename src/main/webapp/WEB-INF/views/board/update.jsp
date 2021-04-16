<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
</head>
<body>
  <h1>게시글 수정 페이지</h1>
  <form action="update" method="post">
       <input type="hidden" name="page" value="${page}">
      <div>
        <p>
          번호 : ${vo.bno}
        </p>
      </div>

      <div>
        <p>
          제목 : <input type="text" name="title" value="${vo.title }" >
        </p>
      </div>

      <div>
        <textarea rows="20" cols="120" name="content" value="${vo.content }"></textarea>
      </div>

      <div>
        <p>
          작성자 : ${vo.userid}
        </p>
      </div>

      <div>
         <fmt:formatDate value="${vo. cdate}" pattern="yyyy-MM-dd HH:mm:ss" var = "cdate"/>
        <p>
          작성일 : ${cdate}
        </p>
      </div>
    <input type="submit" value="수정완료">
  </form>


  <hr>

  <a href="list.do"> <input type="button" value="돌아가기"></a>
</body>
</html>