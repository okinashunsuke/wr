# README

## users テーブル
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| user_name          | string  | null: false |
| position           | string  |             |

### Association
- has_many : construction


## construction テーブル
| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false                    |
| place           | string     |                                |
| partner_company | string     |                                |
| price           | integer    |                                |
| user            | references | foreign_key: true              |
| type            | string     |                                |
| schedule        | string     |                                |

### Association
- belongs_to : user
- has_many   : construction_type

## type テーブル
| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| type         | string     | null: false                    |
### Association
- has_many   : construction_type

## construction_type テーブル
| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| construction | string     | null: false                    |
| type         | string     | null: false                    |
### Association
- belongs_to : construction
- belongs_to : type
