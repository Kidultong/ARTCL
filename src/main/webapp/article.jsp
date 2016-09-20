<%@page import="com.kidultong.vo.ArticleVO"%>
<%@page import="java.util.List"%>
<%@page import="com.kidultong.dao.ARTCLDaoImpl"%>
<%@page import="com.kidultong.dao.ARTCLDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ARTCLDao dao = new ARTCLDaoImpl();
	List<ArticleVO> articles = dao.getArticles();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Article</h1>
	<hr/>
	<table style="width: 100%; border-collapse: collapse; border: 1px solid #000000;">
		<tr style="height: 50px;">
			<td>Article ID</td>
			<td>Subject</td>
			<td>Content</td>
			<td>Create Date</td>
		</tr>
<%
	int articlesSize = articles.size();
	ArticleVO article = null;
	for(int i=0; i<articlesSize; i++) {
		article = articles.get(i);
%>		
		<tr>
			<td><%out.print(article.getArticleId()); %></td>
			<td><%= article.getSubject() %></td>
			<td><%= article.getContent() %></td>
			<td><%= article.getCreateDate() %></td>
		</tr>
<% }  %>
	</table>
</body>
</html>