package com.example.libapp

class User {
  String username
  Integer password
  Character gender
  String college

  String toString() {
    "${username}\n${password}\n${gender}"
  }
}

class PrivateController {
  /* def register() {
    // println params // 1 per request
    // groovy map

    def username = params['username']
    def password = params['password']
    def country = params['country']
    def gender = params['gender']

    println username.getClass() // String
    println password.getClass() // String
    // params always collects data from request as String
  } */

  // another way of collecting data
  // automatic type conversion happens which is absent in params
  // function argument name must match form parameter name
  /* def register(String username, Integer password, Character gender, String college) {
    println username
    println password
    println gender
  } */

  // another way
  // Command pattern
  /*def register(User user) {
    // println user
    // TODO: Insert the record inside the database table
    redirect controller: 'public', action: 'index' // function available in every controller
  }*/

  def register(Student student) {
    student.save flush: true // immediately hit the database at this point (flush: true)
    redirect controller: 'public', action: 'index' // function available in every controller
  }
}
