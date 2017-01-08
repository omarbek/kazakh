<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Казақ Тілі</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
  	<script src="js/jquery-3.1.1.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/main.js"></script>
</head>
<%
String userId = (String)session.getAttribute("userId");
String userStatus = (String)session.getAttribute("userStatus");

String navPage = request.getParameter("navPage");

%>
<body>
	<div class="container" id="content" style="max-width: 1000px;" align="center">
      <div id="nav" class="row" href="sad">
        <nav class="list-inline">
         <%
          if(userId==null){
          	  %><a href="?login.jsp"></a> <%
        		}
        		else{
        		%>
	        		 <li>
	           		 	<a href="index.jsp">Главная</a>
	          		</li>
	          		<li>
	          			<a href="">Уроки</a>
	          		</li>
	          		<li>
	            		<a href="">Тренировка</a>
	          		</li>
	          		<li>
	            		<a href="">Мои достижения</a>
	          		</li>
	          		<li>
	            		<a href="">Мой словарь</a>
	          		</li>
	          	
				<%} %>
        </nav>
        <ul class="user-link list-inline">
	        <li>
	          <%
	          if(userId==null){
	          	  %><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Войти</a> <%
	          }
        	  else{
        		%>
        		<form action="LogoutServlet" method="post" id="logoutForm"></form>
				<a href="#" id="logout"><span class="glyphicon glyphicon-log-in"></span> Выйти</a>
			  <%} %>
			</li>
        </ul>
      </div>
       <%
		if(userId == null){
			%>
			<jsp:include page="login.jsp" />
			<%
		}
		else{
			//System.out.println(navPage);
			if(userStatus!=null && userStatus.equals("1")){
				%>
				<jsp:include page="homeTeacher.jsp" />
				<%
			}
			else if(userStatus!=null && userStatus.equals("2")){
				if(navPage == null){
				%>
			<jsp:include page="homeStudent.jsp" />
				<%
				}
				else if(navPage.equals("trainings")){	
					
					%>
			<jsp:include page="trainings.jsp" />
					<%
				}
				else if(navPage.equals("trainingOne")){	
					%>
			<jsp:include page="trainingOne.jsp" />
					<%			
				}
				else if(navPage.equals("trainingTwo")){	
					%>
			<jsp:include page="trainingTwo.jsp" />
					<%			
				} else if(navPage.equals("trainingThree")){
					%>
			<jsp:include page="trainingThree.jsp" />
					<%			
				}
			}
		}
	  %>
    </div>
<footer class="container-fluid text-center">
<p>
   <div id="login-overlay" class="modal-dialog">
	      <div class="modal-content">
			@CopyRight ISTEP Solutions
		  </div>
	</div>
</p>
</footer>

</body>
</html>