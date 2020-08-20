# README
# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| name            | string | null: false |
| email           | string | null: false |
| passward        | string | null: false |
| first-name      | string | null: false |
| last-name       | string | null: false |
| first-name-kana | string | null: false |
| last-name-kana  | string | null: false |
| birth           | date   | null: false |

### Association
- has_many :items
- has_many :buyers

## items　テーブル

| Column        | Type    | Options                       |
| ------------- | ------- | ----------------------------- |
| image         | string  | null: false                   |
| name          | string  | null: false                   |
| explain       | string  | null: false                   |
| category      | integer | null: false                   |
| status        | integer | null: false                   |
| fee           | integer | null: false                   |
| prefecture    | integer | null: false                   |
| schedule      | integer | null: false                   |
| price         | integer | null: false                   |
| user_id       | integer | null] false, foeign_key: true |

### Association
- beoongs_to :user
- has_one :buyer

## buyers　テーブル

| Column          | Type     | Options                        |
| --------------- | -------- | ------------------------------ |
| users_id        | integer | null: false, foreign_key: true |
| items_id        | integer | null: false, foreign_key: true |

### Association
belongs_to :item
belongs_to :user
has_one :address

## address　テーブル

| Column       | Type     | Options                        |
| ------------ | -------- | ------------------------------ |
| postal       | string   | null: false, foreign_key: true |
| prefecture   | integer  | null: false, foreign_key: true |
| city         | string   | null: false, foreign_key: true |
| addresses    | string   | null: false, foreign_key: true |
| building     | string   |              foreign_key: true |
| phone-number | string   | null: false, foreign_key: true |

### Association 
belongs_to :buyer


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
