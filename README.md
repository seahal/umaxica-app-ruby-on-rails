[![Hello](https://github.com/seahal/demo-application-ror/actions/workflows/example.yaml/badge.svg)](https://github.com/seahal/demo-application-ror/actions/workflows/example.yaml)
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    - Just Do It => `ruby -v`
* System dependencies
    - Ruby => Ofcource, we are on Ruby.
    - Bun => We choiced use Bun as JavaScript Runtime.
* Configuration
    - Edit hosts files to separate .com or .net.
    - ```
      # /etc/hosts
      127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain        in4
      ::1         localhost localhost.localdomain localhost6 localhost6.localdomain        in6```
    - `localhost4.localdomain` is for www.example.com and `localhost6.localdomain` is for example.net .
* Database creation
    - `bin/rails db:create`
* Database initialization
    - `bin/rails db:migrate` => `bin/rails db:seed`
* How to run the test suite
    - `bin/rails test`
* Services (job queues, cache servers, search engines, etc.)
    - ???
* Deployment instructions
    - When you are free, look at 'bin/rails notes'
    - `docker push asia-northeast1-docker.pkg.dev/umaxica/docker/ror`
* Using Services
  * AWS
  * Fastly
  * CloudFlare
  * SendGrid
* Secrets
  * Write on `.env.local`
