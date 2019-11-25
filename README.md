# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  * 2.6.3

* Rails version
  * 6.0.1

* Node version
  * 10.16.3

* Postgresql
  * on fresh install run:
  * rails db:create
  * rails db:migrate

* To create a new user
  * Access Rails Console
    * rails c
  * Create a new user
    * user = User.create( email: something@email.com, password: '12345678', password_confirmation: '12345678')
  * Load up Paw, or Postman app
    * To get contacts in DB
      * GET http://localhost:3000/v1/contacts
    * To access session data
      * POST http://localhost:3000/v1/sessions
        * set email => something@email.com
        * set password => 12345678
    * Make sure that the Response is set to JSON, and you'll be able to see the authentication_token
