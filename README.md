# 技術はまだまだですが、めっちゃ調べてます


# アプリケーション名
ACEラボ コーポレートサイト

## サイトマーケティング概要
![marketing1](https://user-images.githubusercontent.com/76588745/123549997-4c534280-d7a6-11eb-9a82-f9303f2c1393.png)

## 主要検索クエリ概要
![marketing2](https://user-images.githubusercontent.com/76588745/123550854-63942f00-d7aa-11eb-8656-d23aa66cee19.png)


## アプリケーション概要
・5月に設立された株式会社ACEラボ様のコーポレートサイト兼オウンドメディアとして開発
・UI Flow図
https://cacoo.com/diagrams/rCQHArOtyQLEr1DA/EB7CA
・サイトマップ
https://cacoo.com/diagrams/rCQHArOtyQLEr1DA/2A63E

## URL
https://acelabo-corporate.herokuapp.com/

## テスト用アカウント
Basic認証を後日導入後記載

## 利用方法
・ユーザー（顧客）側
→コラムに対してのコメント機能（サイトブランディングを下げないためにコメントは管理者のみに表示）
→コラムに対しての「いいね」機能
→商材（セラミック等）に関してのお問い合わせ機能
→記事検索機能により、顧客側が求める情報まで最短でリーチできるようにする
・管理者（ACEラボ社員側）
→顧客やサイト訪問者に向けたコラム記事を投稿し、取得したばかりのドメインであってもドメインパワーを高めさせる
→細かいタグ分類とカテゴリ分類によってSEO要件を満たし、歯科技工所自体の認知度を高めていく

## 目指した課題解決
・クライアント（ACEラボ）側の理念である”セラミックという存在を世間に認知させ、歯科をさらに身近な存在にする”という理念を実現させる

・上記理念を達成するためにはまず”歯科医師達への企業認知”をさせる必要があるため、自身の得意なSEM施策をフルに用いて歯科医師への認知を高めていく

## 機能に関して
・機能一覧表
https://docs.google.com/spreadsheets/d/1AYvA3WWfpzVbxzRXpsc0uLz10uHCn646Xwt3UXa87gc/edit?usp=sharing

## DB設計
・ER図
https://cacoo.com/diagrams/rCQHArOtyQLEr1DA/F37B4

・テーブル定義図
https://docs.google.com/spreadsheets/d/19DNxSasYeRo7xnM1R0WI1CobgQAmM6YI04pE7a_fsF0/edit?usp=sharing

## ローカルでの動作方法
$ git clone https://github.com/nittamatama/acelab_corporate
$ cd acelab_corporate
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
👉 http://localhost:3000

## 開発環境
VScode
Ruby 2.6.5
Rails 6.0.0
mysql2 0.5.3
JavaScript
gem 3.0.3
heroku 7.46.0

