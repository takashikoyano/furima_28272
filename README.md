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

| Column        | Type     | Options                       |
| ------------- | -------- | ----------------------------- |
| image         | string   | null: false                   |
| name          | string   | null: false                   |
| explain       | string   | null: false                   |
| category      | intenger | null: false                   |
| status        | intenger | null: false                   |
| fee           | intenger | null: false                   |
| prefecture_id | intenger | null: false                   |
| schedule      | intenger | null: false                   |
| price         | intenger | null: false                   |
| user_id       | intenger | null] false, foeign_key: true |

### Association
- beoongs_to :user
- has_one :buyer

## buyers　テーブル

| Column          | Type     | Options                        |
| --------------- | -------- | ------------------------------ |
| users_id        | intenger | null: false, foreign_key: true |
| items_id        | intenger | null: false, foreign_key: true |

### Association
belongs_to :item
belongs_to :user
has_one :address

## address　テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| postal       | string | null: false |
| prefecture   | string | null: false |
| city         | string | null: false |
| addresses    | string | null: false |
| building     | string |             |
| phone-number | string | null: false |

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
