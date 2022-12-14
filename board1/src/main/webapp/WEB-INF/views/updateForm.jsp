<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if(frm.passwd.value != frm.passwd2.value) {
			alert("암호가 다르면 수정할 수 없습니다");
			frm.passwd2.focus();
			frm.passwd2.value = "";
			return false;
		}
	}
	// frm:폼 객체 네임값, passwd: hidden으로 되어있는 네임값, value: 앞선 네임값 객체들의 데이터값(여기서는 db상에 저장된 비번)
	// frm.passwd2.value: 사용자가 입력한 비번
</script>
</head>
<body>
	<div class="container" align="center">
		<h2 class="text-primary">게시글 글수정</h2>
		<form action="update.do" method="post" name="frm"
			  onsubmit="return chk()">
			  <!-- chk() 함수 호출 -->
			<input type="hidden" name="num" value="${board.num}"> 
			<input type="hidden" name="pageNum" value="${pageNum}"> 
			<input type="hidden" name="passwd" value="${board.passwd}">
			<table class="table table-striped">
				<tr>
					<td>번호</td>
					<td>${board.num}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="subject" required="required"
								value="${board.subject}"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" required="required"
								value="${board.writer}"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" required="required"
								value="${board.email}"></td>
				</tr>
				<tr>
					<td>암호</td>
					<td><input type="password" name="passwd2" required="required"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<textarea rows="5" cols="30" name="content" required="required">${board.content}
						</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="확인"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>