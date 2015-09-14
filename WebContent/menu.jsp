<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  		<p><a href='<spring:url value="/member/memberPage1.jsp" />'>Go to Member page</a></p>
  		<p><a href='<spring:url value="/admin/adminPage1.jsp" />'>Go to Admin page</a></p>		
        <p><a href="<spring:url value="/" />">Go to Index page</a></p>
        
</html>