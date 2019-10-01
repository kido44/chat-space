# DB設計

## users table

|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|
|mail|string|null: false|

### Association
- has_many :groups, through:members
- has_many :messages
- has_many :members


## groups_users table

|Column|Type|Options|
|------|----|-------|
|user_id|references :group|null: false, foreign_key: true|
|group_id|references :user|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groups table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :members, through: :members
- has_many :messages
- has_many :group_users

## message table

|Column|Type|Options|
|------|----|-------|
|body|text| |
|image|string|  |
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :group
- belongs_to :user

## members table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :group
- belongs_to :user
