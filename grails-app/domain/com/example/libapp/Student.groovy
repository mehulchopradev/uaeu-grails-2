package com.example.libapp

class Student {

    String username
    Integer password
    Character gender
    String country

    static hasMany = [books: Book]

    //owned side of many to many
    static belongsTo = Book // remember! Not a map

    static constraints = {
    }
}
