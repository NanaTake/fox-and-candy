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

## answersテーブル

|Column|Type|Options|
|------|----|-------|
|theme_id|integer|null: false|
|items|string|null: false|
|content|string|null: false|
|answerer|string|default: 'ななしのゴンベ'|
|likes_count|integer?|index: true|

### Association -answer
- belongs_to_active_hash :theme
- has_many :likes, dependent: :destroy

### validation -answer
- validates :answerer, presence: true, uniqueness: true
- with_options presence: true do
-   validates :theme_id
-   validates :items
-   validates :content
- end



## likesテーブル

|Column|Type|Options|
|------|----|-------|
|answer_id|references|foreign_key: true|

### Association -like
- belongs_to :answer, counter_cache: :likes_count

### validation -like