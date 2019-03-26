<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login Here</title>
    <asset:stylesheet href="app.css" />
  </head>
  <body>
    <asset:image class="banner" src="library-banner.jpg" />
    <form>
      <p>
        <input type="text" placeholder="Enter Username">
      </p>
      <p>
        <input type="password" placeholder="Enter Password">
      </p>
      <p>
        <input type="submit" value="Login">&nbsp;
        <g:link action="register" controller="public">
          New User ? Register Here
        </g:link>
      </p>
    </form>
  </body>
</html>
