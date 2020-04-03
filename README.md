# アプリ名
ToDo application

# 概要
　◆ ユーザー新規登録  
 　　・ メールアドレスとパスワードを設定することができます。  
 　　・ パスワードは6文字の入力で、6文字未満や、7文字以上の場合はバリデーションでエラー表示されます。  
   
  　◆ ログイン機能  
 　　・ 新規登録で設定したメールアドレスと、パスワードを使用し、ログインすることができます。
 
  　◆ プロフィール編集画面  
 　　・ 自分の名前と、ニックネームを入力することができます。  
 　　・ 名前、ニックネーム共に、空の入力をするとバリデーションでエラーが表示されます。  
 　　・ 作成した名前とニックネームは、トップページで表示されます。
   
　◆ ToDoリスト作成、編集、削除  
 　　・ トップ画面の新規作成からページ遷移し、タイトルと詳細を入力することでToDoリストを作成できます。   
 　　・ トップ画面から「編集」を押すと、編集画面に遷移し、削除を押すとアラートで「削除してよろしいですか」  
 　　  　と表示されます
  
# 制作背景
TECH::CAMPのカリキュラムを参考にし、作成しました。
作成した理由としてはRubyとRuby on Railsの基礎であるMVCの流れを意識し、日常的に利用できるアプリを作成したかったからです。

# DEMO
　◆ ユーザー新規登録画面  
 　　 ・メールアドレス、パスワード、確認用パスワードの入力をします。  
　　 ・バリデーションの設定(空入力、アドレスの重複、パスワードの相違)

　◆ ログイン画面  
　　 ・新規登録画面で設定した、メールアドレスとパスワードを入力するとログインできます。  

　◆ プロフィール作成、編集画面  
　　 ・ログイン後、トップページに遷移し、「プロフィール作成」を押すと名前とニックネームが設定できます。 

　◆ ToDoリスト作成、編集、削除  
　　 ・トップ画面の「新規作成」を押すと、ToDoリストの作成ができ、タイトルと詳細を入力します。  
　　 ・「登録する」を実行後、トップ画面にてToDoリストが表示され、「見る」、「編集」、「削除」が実行できます。

　◆ ユーザー登録、プロフィール作成、ToDoリスト作成後の画面  
 ![](https://i.gyazo.com/5b13fc7c8ea5806b495541b5c9839213.png)

# 工夫したポイント
・日常的に利用でき、シンプルなデザインで扱いやすいように実装しました。
・ToDoを作成した時点で日時を表示し、一目でいつ作成したかわかるようにすることで、管理を行いやすくしました。

# 開発環境
ruby '2.5.1'
gem 'rails', '~> 5.2.3'

# 課題や今後実装したい機能
Gemfile HTTPartyを使用し、ToDoの予定日が近づいてくると通知が来る機能を設けたいです。

# README
# DB設計
![](https://i.gyazo.com/fdac9880e9484c160fd4afc5043bb863.png)

## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
has_many :todos,dependent: :destroy
has_one :userinfo,dependent: :destroy

## Todosテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key :true|
|title|string|null: false, unique: true|
|detail|text|null: false, unique: true|
### Association
beongs_to :user

## Userinfosテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|profile|text|null: false, unique: true|
### Association
beongs_to :user
