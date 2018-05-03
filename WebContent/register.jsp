<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Bienvenue sur cette application web.

<CENTER><IMG SRC="images/application.png" width="200" height="150" ALIGN="BOTTOM"> </CENTER>

<div id="nav">
            <ul>
              <li><a href=register.jsp>HOME</a></li>
              <li><a href=status.jsp>STATUS</a></li>
              <li><a href=#>SERVICES</a></li>
              <li><a href=contactus.jsp>CONTACT US</a></li>
            </ul>
            <div class="clear"> </div>
          </div>

<HR>

<H1>This is a Header</H1>

<H2>This is a Medium Header</H2>

Send me mail at <a href="mailto:support@yourcompany.com">

support@yourcompany.com</a>.

<P> This is a new paragraph!


     <form action="register" method="post">
        Name:<input type="text" name="username"/><br/>
        Password:<input type="password" name="password"/><br/>
        Email Id:<input type="text" name="email" /><br/>
        Language: <select name="language">
            <option>English</option>
            <option>French</option>
        </select> <br/>
        <input type="submit" value="Submit"/>
    </form>

  <HR>
  <jsp:include page="footer.html"></jsp:include>
</body>
</html>