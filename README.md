# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# users table


|--------------------|---------|------------|
|name                |string   |null: false |
|email               |string   |null: false, unique: true|
|encrypted_password  |string   |null: false |

- has_many: diaries
- has_many: comments


# diaries table

|--------------------|---------|------------|
|date                |string   |null: false |
|title               |string   |null: false, unique: true|
|content             |string   |null: false |
|user                |reference|foreign_key: true, null: false　|

- belongs_to: user
- has_one: comment


# comments table 

|--------------------|---------|------------|
| content            | text      | null: false |
| diary              | reference | null: false, foreign_key: true |
| user               | reference | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :diary

