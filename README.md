![niwaai-logo](https://user-images.githubusercontent.com/56289802/94241696-ebb18380-ff4f-11ea-86f6-fbcc9a4f2ba4.png)
# Niwaai（にわあい）
トップページ画像
## 概要
あなたのお気に入りの日本庭園に出会おうをコンセプトにした庭園写真共有サイトです。
## URL
https://www.niwaai.com

[ゲストログイン]ボタンからゲストユーザーとしてログインできます。
## 制作背景
今年3月に大学を卒業し、大学では造園を専攻していたこともあり造園に関するアプリを制作したいと思ったからです。
日本全国にある日本庭園を探すサービスはあるものの、ユーザー同士でお気に入りの庭園写真を共有するサイトはないと思ったため本アプリを制作しました。
また、私自身学生時代に友達とよく都内の日本庭園を回っていて、どの日本庭園もそれぞれに良さがあると思い、本アプリを通じて沢山の方々にも日本庭園の良さを知ってもらいたいという思いから制作しました。
## 環境・使用技術
### フロントエンド
  - Haml
  - Scss
  - JavaScript、jQuery、Ajax
  - bootstrap 4.5.2
### バックエンド
  - Ruby 2.6.6
  - Rails 6.0.3.2
### 開発環境
  - Docker/docker-compose
  - MySQL8.0
### 本番環境
  - AWS(EC2、VPC、Route53、ACM、ALB)
  - Docker/docker-compose
  - MySQL8.0
  - Nginx、Puma
  - CircleCIを用いてCI（自動テスト）だけ実装
### テスト
  - Rspec
    - 単体テスト
### その他使用技術
  - 外部API(Maps JavaScript API、Geocoding API)
  - 非同期通信(フォロー・コメント・お気に入り)
  - HTTPS通信(AWS Certificate Manager)
  - チーム開発を意識したGitHubの活用(プルリク、マージ)
## 機能一覧
- ユーザー登録、ログイン機能（devise）
- 投稿機能(投稿一覧表示、投稿詳細表示、投稿編集、投稿削除)
- 画像アップロード(carrierwave)
- マイページ
- いいね機能(Ajax)
- フォロー機能(Ajax)
- コメント機能(Ajax)
- ページネーション機能
- 検索機能
- 簡単ログイン機能
- 投稿詳細画面にmapを表示
## クラウドアーキテクチャ
![niwaai](https://user-images.githubusercontent.com/56289802/94265657-dfd7b880-ff73-11ea-951e-76f576c33d35.jpg)
## 特に力を入れた点
モダンな技術の導入(AWS,docker,CircleCI)
モダンな技術を導入した一番の理由は実際の「実務でも使われているケース」が多いからです。
実務でも使われているモダンな技術を少しでも事前知識として触っておきたかったため今回導入しました。
## 今後実装予定・改善していきたい点