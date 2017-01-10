<%@page import="java.util.Random"%>
<%@page import="main.Word"%>
<%@include file="mysql.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String topicId = null;
topicId = (String)request.getAttribute("topic_id");
String questionId = null;
questionId = (request.getAttribute("questionId")).toString();

ArrayList<Word> wordsRusKaz = (ArrayList<Word>)session.getAttribute("wordsRusKaz");

int j = Integer.parseInt(questionId);

%>
<br>
<div class="panel panel-default" style="max-width: 600px;" align="center">
 <%
 if(j>=wordsRusKaz.size()){
		%>
			<div class="well" style="background-color:pink;" align="center">
			<a href="?navPage=trainings&topic_id=<%=topicId%>" class = "btn btn-success">Finished</a>
		   	</div>
		<%
	}
	else{		
 %>
		 <%
		 String width = "style='width:180px;'";
			 %>
			 <table>
			 	<tr>
			 		<td><img height ="200px" width = "200px" src="img/<%=wordsRusKaz.get(j).id%>.jpg" class="img-rounded" alt="Cinque Terre" width="200px"/></td>
					<td><img height ="200px" width = "200px" src="img/<%=wordsRusKaz.get(j).id%>.1.jpg" class="img-rounded" alt="Cinque Terre" width="200px"/></td>
	 		    </tr>
	 		    <tr>
	 		    	<td><img height ="200px" width = "200px" src="img/<%=wordsRusKaz.get(j).id%>.2.jpg" class="img-rounded" alt="Cinque Terre" width="200px"/></td>
	 		    	<td><img height ="200px" width = "200px" src="img/<%=wordsRusKaz.get(j).id%>.3.jpg" class="img-rounded" alt="Cinque Terre" width="200px"/></td>
			 	</tr>
			 </table>
			
 	  <form method="post" action="TrainingOneServlet" id="trainingOneForm">
		 <input type="hidden" name="topic_id" value="<%=topicId%>">
		 <input type="hidden" name="questionId" value="<%=j%>">
		 <input type="hidden" name="task_type" value="one">
		 <input type="hidden" name="wordID" value="<%=wordsRusKaz.get(j).id%>">
		 <input type="hidden" name="variant" value="">
		 <input type="text" name="correctAns">
		 <input type="hidden" name="page" value="trainingFourForm">
	     <button class="btn btn-success btn-block" <%=width %>>Отправить</button>
	 </form>
	 <br>
	 <%	
}
%>
</div>
	  