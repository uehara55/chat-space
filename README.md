# DB設計

## users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, add_index|
|email|string|null: false, unique: true, add_index|
|password|string|null: false|

### Association
- has_many :menbers
- has_many :groups, through: :menbers
- has_many :chats


## groups table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, add_index|

### Association
- has_many :menbers
- has_many :users, through: :menbers
- has_many :chats


## chats table

|Column|Type|Options|
|------|----|-------|
|text|text||
|img|text||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group


## members table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group
