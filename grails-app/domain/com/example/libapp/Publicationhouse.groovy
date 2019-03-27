package com.example.libapp

class Publicationhouse {

    String name
    Integer ratings

    static hasMany = [books: Book]

    static constraints = {
    }

    String toString() {
      this.name
    }
}
