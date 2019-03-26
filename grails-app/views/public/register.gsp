<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Register Here</title>
    <asset:stylesheet href="app.css" />
  </head>
  <body>
    <asset:image class="banner" src="library-banner.jpg" />
    <g:form controller="private" action="register">
      <p>
        <input type="text" placeholder="Username" name="username">
      </p>
      <p>
        <input type="password" placeholder="Password" name="password">
      </p>
      <p>
        Country:
        <!--<select>
          <g:each var="country" in="${countries}">
            <option>${country}</option>
          </g:each>
        </select>-->
        <g:select name="country" from="${countries}" />
      </p>
      <p>
        Gender:
        <input type="radio" name="gender" value="M">Male&nbsp;
        <input type="radio" name="gender" value="F">Female
      </p>
      <p>
        <input type="submit" value="Register">
      </p>
    </g:form>
  </body>
</html>
