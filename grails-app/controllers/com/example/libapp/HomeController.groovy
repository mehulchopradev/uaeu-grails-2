package com.example.libapp

class HomeController {

    BookService bookService

    def index() {
      if (!(session['student'])) {
        redirect controller: 'public'
      } else {
        def bookList = bookService.getBooksOrderBy('price', 'desc')
        [bookList: bookList]
      }
    }

    def bookDetails(Book book) {
      [book: book]
    }

    def issueBook(Book book) {
      Student s = session['student']
      s.attach() // adds it to the hibernate session so that it can be used in
      // gorm functions
      book.addToStudents s
      book.save flush: true

      redirect action: 'index'
    }

    def transferBook(Book book) {
      [book: book]
    }

    def transfer(Long to, Long bookId) {
      Student s = session['student']
      s.attach()

      bookService.transferBook(s, to, bookId)
    }
}
