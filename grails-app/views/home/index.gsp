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
    <table border="1">
      <thead>
        <tr>
          <th>Title</th>
          <th>Price</th>
          <th>Pages</th>
          <th></th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <g:each var="book" in="${bookList}">
          <tr>
            <td>${book.title}</td>
            <td>${book.price}</td>
            <td>${book.pages}</td>
            <td>
              <g:link action="bookDetails" controller="home" id="${book.id}">
                Details
              </g:link>
            </td>
            <td>
              <g:link action="issueBook" controller="home" id="${book.id}">
                Issue Book
              </g:link>
            </td>
            <td>
              <g:link action="transferBook" controller="home" id="${book.id}">
                Transfer Book
              </g:link>
            </td>
          </tr>
        </g:each>
      </tbody>
    </table>
  </body>
</html>
