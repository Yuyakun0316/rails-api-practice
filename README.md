# Rails API Practice

RailsのAPIモード（`--api`）学習用アプリケーション。
フロントエンド（Reactやモバイルアプリ）との連携を想定し、JSONデータの出力と整形を実装。

## 🛠 使用技術
- Ruby on Rails 8 (API mode)
- MySQL
- Blueprinter (JSONシリアライザ)
- RSpec (rspec-rails)
- FactoryBot

## ✨ 実装した機能
- **BookリソースのAPI**
  - 書籍データのJSON出力
  - `render json: ...` による基本的なレスポンス
  - `Blueprinter` を使用したレスポンス構造の整形（シリアライズ）
- **関連データの出力**
  - `association` を使用し、Bookリソースに紐づくReviewデータをネストしてJSON出力
- **APIテスト (Request Spec)**
  - RSpecを使用したエンドポイントの自動テスト
  - レスポンスステータスとJSON構造の検証