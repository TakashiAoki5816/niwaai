![niwaai-logo](https://user-images.githubusercontent.com/56289802/94241696-ebb18380-ff4f-11ea-86f6-fbcc9a4f2ba4.png)
# Niwaai（にわあい）
トップページ画像
## 概要
あなたのお気に入りの日本庭園に出会おうをコンセプトにした庭園写真共有サイトです。
## URL
https://www.niwaai.com

[ゲストログイン]ボタンからゲストユーザーとしてログインできます。
## 制作背景
今年3月に大学を卒業し、大学では造園を専攻していたこともあり造園に関するアプリ
を制作したいと思ったからです。<br>
日本全国にある日本庭園を探すサービスは存在するものの、ユーザー同士でお気に入りの庭園写真を共有するサイトはないと思ったため本アプリを制作しました。<br>
また学生時代に友達とよく都内の日本庭園を回っていて、どの日本庭園もそれぞれに良さがあって居心地がいいなと感じました。<br>
本アプリを通じて沢山の方々にも日本庭園の良さを知ってもらいたいという思いから制作しました。
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
    - システムテスト（capybara）
### その他使用技術
  - Google API(Maps JavaScript API、Geocoding API)
  - 非同期通信(いいね・コメント・フォロー)
  - HTTPS通信(AWS Certificate Manager)
  - チーム開発を意識したGitHubの活用(プルリク、マージ)
## 機能一覧
- ユーザー登録、ログイン機能（devise）
- 投稿機能(投稿一覧表示、投稿詳細表示、投稿編集、投稿削除)
- 画像アップロード(carrierwave)
- マイページ
- いいね、コメント、フォロー機能(Ajax)
- Googlemap表示(Google Maps JavaScript API)
- 住所から緯度経度変換(Geocoding API)
- スライドショー(CSS)
- 検索機能
- ページネーション機能(kaminari)
- 簡単ログイン機能
- テスト(RSpec)
- テストデータ投入(faker)
## クラウドアーキテクチャ
![niwaai](https://user-images.githubusercontent.com/56289802/94265657-dfd7b880-ff73-11ea-951e-76f576c33d35.jpg)
## 特に力を入れた点
### 1.UI/UXを意識した設計
本アプリを開発する前にアプリのコンセプトやターゲット層をしっかり定めてから開発に入りました。<br>
パッと見でどんなアプリなのかどんな体験を与えられるかなどユーザー目線に立ちながら機能・デザインを設計しました。
### 2.モダンな技術の導入(AWS,docker,CircleCI)
モダンな技術を導入した一番の理由は実際の「実務でも使われているケース」が多いからです。<br>
実務でも使われているモダンな技術を少しでも事前知識として触っておきたかったため今回導入しました。
## 改善していきたい点・今後実装予定
### 改善していきたい点
#### 1.アプリの機能が少ない
現在の機能だと、投稿された庭園に実際に訪れたいとなった時にマップしか記されていません。<br>
追加で現在営業しているのかどうか・営業時間等のその庭園に関する情報が投稿詳細表示に記載されてあるとUXとしても良いと思った。<br>
Google APIのPlaces APIを利用すると上記の機能が実装できそうなので今後実装していく予定です。
#### 2.リファクタリングが不十分
重複や無駄のあるコードが多いのでしっかりリファクタリングを行なっていく。
### 今後実装予定
- Google Places API
- 通知機能
- タグ機能
- リファクタリング
- レスポンシブ対応
## About Me
現在22歳で今年3月に大学を卒業しました。<br>
6/8~8/17までスクールに通っていました。<br>
8/17~ ポートフォリオの制作に取り掛かっており、<br>
Twitterでポートフォリオの制作過程を呟いています。([Twitter](https://twitter.com/arfaben__5816))