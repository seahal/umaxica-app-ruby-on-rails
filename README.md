[![Hello](https://github.com/seahal/demo-application-ror/actions/workflows/example.yaml/badge.svg)](https://github.com/seahal/demo-application-ror/actions/workflows/example.yaml)
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    - Just Do It => `ruby -v`,
	- ... or Check `Gemfile` or `.ruby-version`.
* System dependencies
    - Ruby => Ofcource, we are on Ruby.
	- Linux => Run on it.
* Configuration
    - Edit hosts files to separate .com or .net.
    - ```
      # /etc/hosts
      127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain        in4
      ::1         localhost localhost.localdomain localhost6 localhost6.localdomain        in6```
    - `localhost.localdomain` is for jit.umaxica.com, `localhost4.localdomain` is for jit.umaxica.net and `localhost6.localdomain` is for jit.umaxica.org .
* Database creation
    - `bin/rails db:create`
* Database initialization
    - `bin/rails db:migrate` => `bin/rails db:seed`
* How to run the test suite
    - `bin/rails test all`
* Services (job queues, cache servers, search engines, etc.)
    - ???
* Deployment instructions
    - When you are free, look at 'bin/rails notes'
    - `docker push asia-northeast1-docker.pkg.dev/umaxica/docker/ror`
* Using Services
  * AWS
  * Fastly
  * CloudFlare
  * twilio & SendGrid
  * Terraform Cloud
* Secrets
  * You have to set `.env.local` on your own environment.This is because it has confidential.
  * You should use [git-secrets](https://github.com/awslabs/git-secrets).
