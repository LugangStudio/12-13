<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript">
		$(function(){
	
	/*
	JSON.stringify()将js中对象转换成json字符串
	JSON.parse()
	*/
	$('#b1').click(function(){
		var t1=$('#t1').attr('placeholder');
		$('#t1').attr('placeholder','sadasf');
	alert(t1)
		
		var obj={"t1":t1}
		$.ajax({
			type:'POST',
			url:'${pageContext.request.contextPath}/itemControllerJson/add.action',
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(obj),
			dataType:'json',
			success:function(data){
				alert(data.t1)
			}
		});
	})
})
	
	</script>
  </head>
  
  <body>
   	<form >
   	text1:<input type="text" id="t1" name="t1" placeholder="sad"/>
	<input type="button" id="b1" value="jsonss"/>
   	</form>
   	<hr>

  </body>
</html>
