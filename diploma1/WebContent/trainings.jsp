<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="mysql.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <% String qwerty = null;
	qwerty = request.getParameter("topic_id");
 %>
<h2>Тренировки</h2>
 
		<div class="container-fluid center" align=center>
  			<div class="row">
  				<div class="col-sm-3 well" style="background-color:pink;">
					<a href="?navPage=trainingOne&topic_id=<%=qwerty %>&questionId=0">Тренировка 1</a>
				</div>
				<div class="col-sm-3 well" style="background-color:pink;">
					<a href="?navPage=trainingTwo&topic_id=<%=qwerty %>&questionId=0">Тренировка 2</a>
				</div>
				<div class="col-sm-3 well" style="background-color:pink;">
					<a href="?navPage=trainingThree&topic_id=<%=qwerty%>&questionId=0">Тренировка 3</a>
				</div>
			</div>
			<div class="row">
  				<div class="col-sm-3 well" style="background-color:pink;">
					<a href="?navPage=trainingFour&topic_id=<%=qwerty %>">Тренировка 4</a>
				</div>
				<div class="col-sm-3 well" style="background-color:pink;">
					<a href="?navPage=trainingFive&topic_id=<%=qwerty %>">Тренировка 5</a>
				</div>
				<div class="col-sm-3 well" style="background-color:pink;">
					<a href="?navPage=trainingSix&topic_id=<%=qwerty %>">Тренировка 6</a>
				</div>
			</div>
		</div>
