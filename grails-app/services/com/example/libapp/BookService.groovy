package com.example.libapp

import grails.transaction.Transactional
import grails.transaction.NotTransactional

@Transactional
class BookService {

    @NotTransactional
    def getBooksOrderBy(sortColumn, order) {
       Book.list sort: sortColumn, order: order
    }

    def transferBook(Student current, Long toId, Long bookId) {
      Student to = Student.get(toId)
      Book book = Book.get(bookId)

      book.removeFromStudents current
      book.save flush: true

      // emulating some error that occurs in between the transaction
      def name = null
      name.length()

      book.addToStudents to
      book.save flush: true
    }
}
