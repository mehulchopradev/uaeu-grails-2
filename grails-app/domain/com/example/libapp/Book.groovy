package com.example.libapp

class Book {

    String title
    Integer pages
    Float price

    static belongsTo = [publicationHouse: Publicationhouse]

    static hasMany = [students: Student]

    static constraints = {
      title nullable: false, maxSize: 20
      pages nullable: false
      price nullable: true
    }
}
