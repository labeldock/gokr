# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* System dependencies

* Configuration
rails db:migrate

* Database creation
```
user name:string password:string meta:json
task action:string user:references
cron every:string parameter:json task:references user:references
land role:string domain:string tags:string version:float data:json head:json start:datetime end:datetime user:references
```

```
rails db:migrate
rails db:seed
```

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
