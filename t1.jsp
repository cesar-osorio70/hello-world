<%@ include file="header.jsp" %>
<%@ page import="newsletter.NewsletterDatabase" %>
<%@ page import="java.sql.)" %>
<%

	NewsletterDatabase ndb = new NewsletterDatabase();
	String email = request.getParameter("email");
	boolean addressExist = nbn.findEmailAddress(eamil);

%>

<blockquotes>
	<br/><br/>
<%
if ( addressExit) {
%>
Reset password has been temporarily disabled. <br/><br/>
Please <a href="/contact/">Contact US</a>
<br/><br/>
<% } else { %>
<strong> No account found for "<%=email %>" </stromg>. <br/><br/>
Did you register with a different email? Still having troubles .. <a href="/contact/">Contact Us</a>.
<br/><br/>

<form action="resetPassword.jsp">
	Email: <input type="text" name="email" > <br/><br/>
	<input type="submit" value="Reset my password">
</form>

<% } %>
</blockquote>
</html>