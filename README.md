# README

## users テーブル
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| user_name          | string  | null: false |
| position           | string  |             |

### Association
- has_many : constructions
- has_one  : calendar


## construction テーブル
| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| name            | string     | null: false       |
| place           | string     |                   | 
| price           | bigint     |                   |
| schedule        | string     |                   |
| user            | references | foreign_key: true |
| doing           | string     | null: false       |
### Association
- belongs_to : user
- has_one    : calendar


## calendar テーブル
| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| construction    | references | foreign_key: true |
| user            | references | foreign_key: true | 
| const_type      | string     |                   |
| company         | string     |                   | 
| n_o_p           | integer    |                   |
| start_time      | datetime   |                   |
| when            | date       |                   |
### Association
- belongs_to : user
- belongs_to : construction


# アプリケーション名	
- 
# アプリケーション概要	
- このアプリケーションでできることを記述しましょう。
# URL
- デプロイ済みのURLを記述しましょう。デプロイが済んでいない場合は、デプロイ次第記述しましょう。
# テスト用アカウント
- ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう。
# 利用方法
- このアプリケーションの利用方法を説明しましょう。
# 目指した課題解決
- このアプリケーションを通じて、どのような人の、どのような課題を解決したかったかを書きましょう。
# 洗い出した要件
- スプレッドシートにまとめた要件定義を、マークダウンで記述しなおしましょう。
# 実装した機能についてのGIFと説明
- 実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。
# 実装予定の機能
- 洗い出した要件の中から、今後実装予定のものがあれば記述しましょう。
# データベース設計
- ER図等を添付しましょう。
# ローカルでの動作方法
- git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。















<% name_check = [] %>
  <% @calendars.each do |calendar|%> 
    <%unless name_check.include?(calendar.company) %> 
      <%if calendar.construction_id == @construction.id %>
        <%= calendar.company %>
        <% @nops = Calendar.where(company: calendar.company).where(construction_id: @construction.id)%>
           <li> <%= "#{@nops.sum { |hash| hash[:n_o_p]}}人工" %></li> 

           <input id='ninku', value="<%= @nops.sum { |hash| hash[:n_o_p]}.to_i %>" >
            <div class="price-content">
          <span class="sell-yen">¥</span>
          <input id='tanka', placeholder="単価を入力" >
        </div>
        <div class="price-content">
          <span>販売手数料 (10%)</span>
          <span>
            <span id='seikyu'></span>円
          </span>
        </div>
       
        <% name_check << calendar.company %><br>
      <% end %>
    <% end %>
  <% end %>