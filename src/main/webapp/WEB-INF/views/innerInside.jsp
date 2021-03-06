<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

	<title>MODIFY</title>
		<style>
				@font-face { font-family: 'BMJUA';
					src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff');
					font-weight: normal;
					font-style: normal;
				}
		</style>
		
			<link rel="stylesheet"
			  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
			  <link href="/resources/css/board.css" rel="stylesheet">
</head>
	
	
<body>
		<div class="container" style="background: #FFFFFF; ">
    <div style="width: 600px; margin: 0 auto">
        <form action="modify?seq=${board.seq}" method="post" name="input" id="input" >
            <table class="table table-light" style="text-align:center; border:2px solid #dddddd; width: 600px; margin-top: 20px;">
                <thead>
                <tr>
                    <th>글번호 ${board.seq}</th>
                    <input type="hidden" name="seq" value="${board.seq }" />
               		<input type="hidden" name="page" value="${cri.page}" />
					<input type="hidden" name="perPageNum" value="${cri.perPageNum}" />
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="text" class="form-control" value="${board.title}" name="title" id="title" maxlength="50"></td>
                </tr>
 				<tr>
                    <td><input type="text" class="form-control" value="${board.user}" name="user" id="user" maxlength="50"></td>
                </tr>

                <tr>
                    <td><textarea name="content" id="content" rows="10" cols="100" style="width:578px; height:490px;">${board.content}</textarea></td>
                </tr>
                 <tr>
                 	<td>
	                 	<div class="filebox"> 
		                 	<input class="upload-name" value="파일선택" disabled="disabled"> 
		                 	<label for="ex_filename">업로드</label> 
		                 	<input type="file" id="ex_filename" class="upload-hidden" name="filename"/>
	                 	</div>
	                 	<div>
	                 		<div class="img_wrap">
	                 			<img id="img" />
	                 		</div>
	                 	</div>
                 	</td>
                </tr>
                <tr>
                    <td style="width: 600px; text-align: center;">
                        <input type="button" class="btn btn-default pull-left" value="취소" onclick="location.href='inside?seq=${board.seq}'">
                        <input type="submit" class="btn btn-default pull-right" value="수정" id="save">
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>
</body>
</html>
