package com.example.libapp

class PublicController {

    def index() {
    }

    def register() {
      // To get list of countries from a database
      def countries = ['India', 'UAE', 'France']
      [countries: countries]
    }
}
