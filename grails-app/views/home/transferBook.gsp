<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Home</title>
    <asset:stylesheet href="app.css" />
  </head>
  <body>
    <asset:image class="banner" src="library-banner.jpg" /><br>
    <h2>Welcome ${session.student.username}</h2>
    <g:link action="logout" controller="private">Logout</g:link>
    <g:form controller="home" action="transfer">
      <g:hiddenField name="bookId" value="${book.id}" />
      <g:textField name="to" placeholder="Enter student id to whom u want to transfer"/>
      <input type="submit" value="Transfer">
    </g:form>
  </body>
</html>
