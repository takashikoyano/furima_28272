# README
# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| passward | string | null: false |

### Association
- has_many :items
- has_one :buyers

## items　テーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| image       | string | null: false |
| item-name   | string | null: false |
| item-info   | string | null: false |
| price       | string | null: false |

### Association
-beoongs_to :users

## buyers　テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| first-name      | string | null: false |
| last-name       | string | null: false |
| first-name-kana | string | null: false |
| last-name-kana  | string | null: false |
| birth           | string | null: false |

### Association
has_one :adresses
belongs_to :users

## address　テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| postal       | string | null: false |
| prefecture   | string | null: false |
| city         | string | null: false |
| addresses    | string | null: false |
| building     | string | null: true  |
| phone-number | string | null: false |

### Association 
belongs_to :buyers


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
