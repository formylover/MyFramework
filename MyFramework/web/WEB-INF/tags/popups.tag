<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag
	import="project.jun.was.HoModel"
	import="project.jun.util.HoUtil"
	import="project.jun.util.HoServletUtil"
	import="project.jun.was.parameter.HoParameter"
	import="project.jun.was.spring.HoController"
	import="project.jun.util.HoValidator"
%><%@ include file="include.tag" %>
<%
	int gridIndex = HoServletUtil.getIndex(request, "grid_index");

	boolean isDockedItem = HoServletUtil.getArea(request).indexOf("dockedItems") > 0;

%>
<% if( (isScript||isScriptOut )  && !isDockedItem  ) { %>
<%
		HoServletUtil.setInArea(request, "popups" );
		HoServletUtil.increaseIndex(request, HoServletUtil.getArea(request)+"_popups");
%>
		window : {
			<jsp:doBody></jsp:doBody>
		} ,
<%
		HoServletUtil.setOutArea(request);
%>
<% } %>

<% if( isHtml ) {%>
<% } %>