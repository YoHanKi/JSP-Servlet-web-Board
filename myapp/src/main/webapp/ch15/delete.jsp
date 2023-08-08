<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ch15.BoardBean" %>
<jsp:useBean id="bMgr" class="ch15.BoardMgr"/>
<html>
<head>
<title>HANS Board</title>
<%
	request.setCharacterEncoding("EUC-KR");
	String nowPage = request.getParameter("nowPage");
	int num = Integer.parseInt(request.getParameter("num"));
	if (request.getParameter("pass") != null) {
		String inPass = request.getParameter("pass");
		BoardBean bean = (BoardBean) session.getAttribute("bean");
		String dbPass = bean.getPass();
		if (inPass.equals(dbPass)) {
			bMgr.deleteBoard(num);
			String url = "list.jsp?nowPage=" + nowPage ;
			response.sendRedirect(url);
		} else {
%>
<script type="text/javascript">
	alert("�Է��Ͻ� ��й�ȣ�� �ƴմϴ�.");
	history.back();
</script>
<%}
	} else {
%>
<script type="text/javascript">	function check() {
	if (document.delFrm.pass.value ==""){
		alert("�н����带 �Է��ϼ���.");
		document.delFrm.pass.focus();
		return false;
	}
	document.delFrm.submit();
}
</script>
</head>
<body bgcolor="white">
<div align="center">
	<br/><br/>
	<table width="600" cellpadding="3">
		<tr>
			<td bgcolor="#D0D0D0" height="21" align="center">
				������� ��й�ȣ�� �Է����ּ���.
			</td>
		</tr>
	</table>
	<form name="delFrm" method="post" action="delete.jsp">
	<table width="600" cellpadding="2">
	<tr>
		<td align="center">
	<table>
	<tr>
		<td align="center">
		<input type="password" name="pass" size="17" maxlength="15">
		</td>
	</tr>
	<tr>
		<td align="center">
		<input type="button" value="�����Ϸ�" onClick="check()">
		<input type="reset" value="�ٽþ���">
		<input type="button" value="�ڷ�" onClick="history.go(-1)">
		</td>
	</tr>
	</table>
	</td>
	</tr>
	</table>
	<input type="hidden" name="nowPage" value="<%=nowPage%>">
	<input type="hidden" name="num" value="<%=num%>">
	</form>
</div>
<% }%>
</body>
</html>