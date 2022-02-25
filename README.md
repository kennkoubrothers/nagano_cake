# NaganoCake
DMMWEBCAMPのチーム開発で作成したECサイトとなります。

## 概要
長野県にある小さな洋菓子店「ながのCAKE」の商品を通販するためのECサイト開発。

## 背景
元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来るよう
になった。
InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、管
理機能を含んだ通販サイトを開設しようと思い至った。

## 設計
#### ・[アプリケーション詳細設計](https://docs.google.com/spreadsheets/d/1k3_Lt9E-iEa3XYfKZ_GgrDvhbejmrbZ1HPPph1cbBW4/edit?usp=sharing)</br>
#### ・[テーブル提議書](https://docs.google.com/spreadsheets/d/1j-s1bEjx_7mZfXDbo8dxNIOVt79RdffoE2qM9rvZ6fE/edit?usp=sharing)</br>
#### ・ [ER図](https://drive.google.com/file/d/1Cb8IphD4dtJGQUoEBUswaxa2AXYCdF83/view?usp=sharing)


## 使い方
このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる Gem をインストールします。

```
$ git clone git@github.com:kennkoubrothers/nagano_cake.git
```

```
$ bundle install
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

Railsサーバーを立ち上げます。

```
$ rails server
```

## 使用技術
- Ruby 2.6.3
- Rails 6.1.4.6
- Bootstrap 4.2.1


## アプリ機能一覧

### 顧客側
【会員未登録】
* サイトの閲覧
* 会員新規登録機能
* 検索(商品名)

【会員登録後】
* ログイン機能（メールアドレス、パスワードでログイン）
* ログアウト機能
* 退会機能
* 商品一覧、詳細
* 商品のカート追加機能
* カート内の商品の個数変更機能
* 商品購入機能
* マイページでの登録情報の変更、配送先の追加、注文履歴の確認機能
* 検索(商品名)

### 管理者側
* ログイン機能
* ログアウト機能
* 商品の新規登録、一覧、詳細、編集機能（販売ステータスの変更が可能）
* 会員の一覧、詳細、会員情報の編集機能（会員ステータスを有効/退会に切り替えが可能）
* 注文履歴の一覧、詳細、注文状況の編集機能（注文ステータス, 製作ステータスの切り替えが可能）
* 商品のジャンル設定
* 検索(商品名)


## チームメンバー
- amiblog
- njguld95038043
- kentaro425
