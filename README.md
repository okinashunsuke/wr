# README

## users テーブル
| Column             | Type    | Options             |
| ------------------ | ------- | ------------------- |
| email              | string  | null: false         |
| encrypted_password | string  | null: false         |
| user_name          | string  | null: false         |
| position           | string  |                     |
### Association
- has_many : constructions
- has_many : calendar
## construction テーブル
| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| name               | string     | null: false       |
| place              | string     |                   | 
| price              | bigint     |                   |
| schedule           | string     |                   |
| user               | references | foreign_key: true |
| doing              | string     | null: false       |
### Association
- belongs_to : user
- has_many   : calendar
## calendar テーブル
| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| construction       | references |                   |
| user               | references |                   | 
| const_type         | string     |                   |
| company            | string     |                   | 
| n_o_p              | integer    |                   |
| start_time         | datetime   |                   |
| day                | date       |                   |
### Association
- belongs_to : user
- belongs_to : construction

# アプリケーション名	
- WeeklyReport
# アプリケーション概要	
- 社員と現場の稼働状況を１週間、１ヶ月単位でまとめることができます。
# URL
- https://wm-report.herokuapp.com/
# テスト用アカウント
- Email:1@com / Pass:123abc
- Basic認証ID:admin / Pass:2222
# 利用方法
- ①ユーザーを登録、②現場を登録、③カレンダー記入。登録ユーザーのみ閲覧、登録可能。
# 目指した課題解決
- 社員と現場の稼働状況の報告と共有を１アクションで行えるようにし作業時間の短縮を目指しました。。紙で行う場合よりも時短、省スペース化、どこからでもアクセス可能になります。
# 洗い出した要件
- 1	現場一覧表示機能	稼働中の現場と担当者を一覧で表示する	一目でどれがどの仕事をしているか把握する。	登録ユーザーの中に担当現場が表示されるようになっている。
- 2	集計機能	毎月の作業員の人数と金額を集計するため	現場単位で１ヶ月ごとに、作業員数と金額を集計、表示し、請求額を把握する。	現場カレンダー内の会社名、人数、が表示。単価を記入し、1月の金額が表示される。
- 3	カレンダー機能	社員の仕事内容を確認、共有するため	"社員の1日の現場、使用会社、人数、内容を記入社員ごと、現場ごとに表示可能。	社員、現場の稼働状況を報告、共有を１動作で完了させる。
# 実装予定の機能
- 検索機能、コメント機能
# データベース設計
- https://gyazo.com/a16713ce17f6c5c3dfa20f065f031695
# ローカルでの動作方法
- 開発環境 RubyOnRails6.00 GitHub VisualStudioCode SequelPro 
 