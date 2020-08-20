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
- has_one :buyer

## items　テーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| image       | string | null: false |
| name        | string | null: false |
| explain     | string | null: false |
| category    | string | null: false |
| status      | string | null: false |
| fee         | string | null: false |
| prefecture  | string | null: false |
| schedule    | string | null: false |
| price       | string | null: false |

### Association
- beoongs_to :user
- has_one :buyer

## buyers　テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| users_id        | string | null: false |
| items_id        | string | null: false |
| adresss_id      | string | null: false |

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
