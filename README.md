# アプリ名
ToDo application

# 概要
　◆ ユーザー新規登録  
 　　・ メールアドレスとパスワードを設定することができます。  
 　　・ パスワードは6文字の入力で、6文字未満や、7文字以上の場合はバリデーションでエラー表示されるようになります。　　
   
  ◆ ログイン機能
 　　・ 新規登録で設定したメールアドレスと、パスワードを使用し、ログインすることができます。
 
  ◆ プロフィール編集画面

# 制作背景
TECH::CAMPのカリキュラムを参考にし、作成しました。
作成した理由としてはRubyとRuby on Railsの基礎であるMVCの流れを意識し、日常的に利用できるアプリを作成したかったからです。

# DEMO
新規登録の画面にて、メールアドレスと、パスワード、確認用のパスワードを入力します。
一度新規登録をすれば、次回以降はログイン画面にて、メールアドレスと、パスワードを入力するとログインできます。

![](https://i.gyazo.com/36d79bebc5f29d2b5818eee8297762bc.png)


バリデーションを設定し、空入力をした場合はエラーメッセージが表示されます。

![](https://i.gyazo.com/757d6ba01863e54a9f07efdf1dc499de.png)


新規登録後、トップページに遷移し、自分の名前とアプリ内でのニックネームを設定することができます。
変更したい場合は、「編集」を押すといつでも変更することができます。

![](https://i.gyazo.com/9e61e3f194eb320f143ddec6022301ad.png)


「新規作成」を押すと、ToDoリストの作成ができ、タイトルと詳細を入力します。

![](https://i.gyazo.com/f0cd60f13ac201b3bcf73b00752b3029.png)


「登録する」を実行後、先ほどのトップ画面に遷移し、作成したToDoリストのタイトルのみが表示され、「見る」、「編集」、「削除」が実行できます。

![](https://i.gyazo.com/7cabbd3979e2b7f2cbdc69cbb3608a78.png)


「見る」を実行した場合、詳細の内容を確認でき、この画面から編集することも可能です。

![](https://i.gyazo.com/a7d25515ddd759e0545c9d9fa1cf087d.png)

# 工夫したポイント
実用的な装飾を意識しました。
ネットでToDoアプリを調べてみると、あまり装飾に力を入れていないものが目立ちましたので、おしゃれな色合いと構成を意識しました。

# 開発環境
ruby '2.5.1'
gem 'rails', '~> 5.2.3'

# 課題や今後実装したい機能
現在個人でしか使えないToDoアプリとなっているので、グループで管理できる機能を考えています。
理由としては、最終課題でチームのタスク管理として「Trello」というToDoアプリを使用し、とても便利だと感じたからです。

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
