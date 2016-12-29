<%@page import="main.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%!
static Connection con = (new DBConnection()).getConnection();
%>