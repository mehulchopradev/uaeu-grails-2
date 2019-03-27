<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login Here</title>
    <asset:stylesheet href="app.css" />
  </head>
  <body>
    <asset:image class="banner" src="library-banner.jpg" /><br>
    <g:if test="${flash.authFailed}">
      <b>Invalid Username Or password</b>
    </g:if>
    <g:form controller="private" action="auth">
      <p>
        <g:textField name="username" placeholder="Enter Username" value="${flash.username}"/>
      </p>
      <p>
        <input type="password" name="password" placeholder="Enter Password">
      </p>
      <p>
        <input type="submit" value="Login">&nbsp;
        <g:link action="register" controller="public">
          New User ? Register Here
        </g:link>
      </p>
    </g:form>
  </body>
</html>
