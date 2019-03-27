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
    <h1>${book.title}</h1>
    <i>${book.price}</i><br>
    <i>${book.pages}</i>

    <h2>Publication House Details</h2>
    <h1>${book.publicationHouse.name}</h1>
    <i>${book.publicationHouse.ratings}</i>
  </body>
</html>
