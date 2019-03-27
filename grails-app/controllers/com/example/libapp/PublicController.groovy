package com.example.libapp

class PublicController {

    def index(String username) {
      []
    }

    def register() {
      // To get list of countries from a database
      def countries = ['India', 'UAE', 'France']
      [countries: countries]
    }
}
