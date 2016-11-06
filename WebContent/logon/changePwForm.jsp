<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 변경</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script>
	function begin(){
		document.myform.passwd.focus();
	}
	function checkIt(){
		if(!document.myform.id.value){
			alert("아이디를 입력해주세요.");
			document.myform.id.focus();
			return false;
		}
		if(!document.myform.name.value){
			alert("이름을 입력해주세요.");
			document.myform.name.focus();
			return false;
		}
		if(!document.myform.jumin1.value || !document.myform.jumin2.value){
			alert("주민등록번호를 입력해주세요.");
			document.myform.jumin1.focus();
			return false;
		}
	}
</script>
</head>
<body onload="begin()" bgcolor="${ bodyback_c }">
	<form name="myform" action="/semi/logon/changePwPro.do" method="post" onSubmit="return checkIt()">
		<table border="1" cellspacing="0" cellpadding="0" width="320" align="center">
			<tr height="30">
				<td colspan="2" align="middle" bgcolor="${ title_c }"><font size="+1"><b>비밀번호 변경</b></font></td>
			</tr>
			<tr height="30">
				<td width="120" bgcolor="${ title_c }" align="center">아이디</td>
				<td width="200" bgcolor="${ value_c }" align="center"><input type="text" name="id" size="17" maxlength="12" /></td>
			</tr>
			<tr height="30">
				<td width="120" bgcolor="${ title_c }" align="center">이름</td>
				<td width="200" bgcolor="${ value_c }" align="center"><input type="text" name="name" size="17" maxlength="12" /></td>
			</tr>
			<tr height="30">
				<td width="120" bgcolor="${ title_c }" align="center">주민등록번호</td>
				<td width="200" bgcolor="${ value_c }" align="center"><input type="text" name="jumin1" size="7" maxlength="6" /> - <input type="text" name="jumin2" size="7" maxlength="7" /></td>
			</tr>
			<tr height="30">
				<td colspan="2" align="middle" bgcolor="${ title_c }">
					<input type="submit" value="비밀번호 변경" />
					<input type="button" value="취      소" onclick="javascript:window.location='/studymate/logon/main.do'" />
				</td>
			</tr>
		</table>
	</form>

</body>
</html>