require 'rails_helper'

RSpec.describe "Books", type: :request do
  describe "GET /books" do
    it "本の一覧がJSONで返ってくる" do
      # 1. データを3つ用意する
      FactoryBot.create_list(:book, 3)

      # 2. APIにリクエストを送る
      get '/books'

      # 3. ステータスコードが 200 (OK) であること
      expect(response).to have_http_status(200)

      # 4. 返ってきたデータ（JSON）の中身を確認する
      json = JSON.parse(response.body)
      
      # データが3つあるか？
      expect(json.length).to eq(3)
      
      # 最初のデータに期待するキー（id, title, author...）が含まれているか？
      # (Blueprinterで設定したカスタムフィールド 'description' もあるかチェック！)
      expect(json[0].keys).to contain_exactly("id", "title", "author", "description", "reviews")
    end
  end
end