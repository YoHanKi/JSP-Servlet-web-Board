<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<title>HANS Board</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div align="center"/>
<br/><br/>
<table width="600" cellpadding="3">
<tr>
	<td bgcolor="black" height="25" align="center"> <font color="white">글쓰기</font></td>
</tr>
</table>
<br/>
<form name="postFrm" method="post" action="boardPost" enctype="multipart/form-data">
<table width="600" cellpadding="3" align="center">
<tr>
	<td align="center">
	<table align="center">
		<tr>
			<td width="20%">성 명</td>
			<td width="80%">
			<input name="name" size="10" maxlength="8"></td>
		</tr>
		<tr>
			<td >제 목</td>
			<td>
			<input name="name" size="10" maxlength="8"></td>
		</tr>
		<tr>
			<td>내 용</td>
			<td><textarea name="content" rows="10" cols="50"></textarea></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pass" size="15" maxlength="15"></td>
		</tr>
		<tr>
		<tr>
			<td>파일찾기</td>
			<td><input type="file" name="filename" size="50" maxlength="50"></td>
		</tr>
		<tr>
			<td>내용타입</td>
			<td>HTML<input type="radio" name="contentType" value="HTTP">&nbsp;&nbsp;
			TEXT<input type="radio" name="contentType" value="TEXT" checked>
			</td>
		</tr>
		<tr>
			<td colspan="2"><hr/></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록">
				<input type="reset" value="다시쓰기">
				<input type="button" value="리스트" onClick="javascript:location,href='list.jsp'">
			</td>
		</tr>	
</table>
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
</form>
</div>
</body>
</html>