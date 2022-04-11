# アプリケーション名 
- closet

# アプリケーション概要
- 自身のクローゼットの洋服管理に役立てることができる。
# URL
- https://closet-37448.herokuapp.com/
# GIF動画
- [![Image from Gyazo](https://i.gyazo.com/fb0dd2e81579ad6017e9faec0ad95779.gif)](https://gyazo.com/fb0dd2e81579ad6017e9faec0ad95779)

# テスト用アカウント
- Basic認証パスワード :10801
- Basic認証ID :chata

# 利用方法

## 画像登録

1. トップページのNew clothesのボタンから、洋服の（画像、メモ、日付、季節、カラー）を入力する
2. 洋服の季節、カラーを入力して検索する

# アプリケーションを作成した背景
- 自身や友人に課題をヒアリングし、「自身の洋服の管理ができない」という課題を抱えていることが判明した。課題を分析した結果、「どんな洋服を購入したか記憶しておくことが難しく、同じような洋服を購入してしまう」ということが原因であることが判明した。同じような問題を抱えている方も多いと推測し、自身がどのような洋服を持っているかを管理できるアプリケーションを開発することにした。
# 洗い出した要件
- https://docs.google.com/spreadsheets/d/1FmQi7ZOsTY2EyXTN9zEBkUqyS_0oJbJBhEWIo8DugVw/edit#gid=982722306

# 実装した機能、説明
- 登録した情報を入力して検索できる
- ユーザーの手間を減らすためプルダウンメニューを実装
# GIF動画
- [![Image from Gyazo](https://i.gyazo.com/d5012f9704c60b29568b4823662c290f.gif)](https://gyazo.com/d5012f9704c60b29568b4823662c290f)
# 実装予定の機能
- 洋服の種類をカテゴリーに分け、JavaScriptを使用してページ遷移なしで、画面の表示を切り替え、検索しやすくする機能
- 必須の入力項目として、洋服をいくらで購入したかを入力するpriceの項目を作成し、月にいくら洋服代として使ったかわかるようになる機能を実装したい
- フロントのデザインを整える
# データベース設計、画面遷移図
[![Image from Gyazo](https://i.gyazo.com/e407eef541075f5e8108ef9e1aec64ee.png)](https://gyazo.com/e407eef541075f5e8108ef9e1aec64ee)

# 開発環境
- HTML/CSS/Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code

# ローカルでの動作方法
- % git clone https://github.com/kayo10801/closet
- % cd closet
- % bundle install
- % yarn install
- % rails db:create
- % rails db:migrate
- % rails s


