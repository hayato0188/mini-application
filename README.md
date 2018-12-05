# README



## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|

### Association
- has_many :pictures, through: :bookmarks
- has_many :bookmarks



## picturesテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|text|text|
|user_id|integer|null: false, foreign_key: true|
|bookmark_id|integer|null: false, foreign_key: true|

### Association
- has_many :users, thorugh: :bookmarks
- has_many :bookmarks



## bookmarksテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|picture_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :picture
- belongs_to :user
