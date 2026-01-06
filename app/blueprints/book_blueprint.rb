class BookBlueprint < Blueprinter::Base
  # IDとタイトルと著者は必ず表示する
  identifier :id
  fields :title, :author
  
  # おまけ：カスタムフィールド
  # データベースにはないけど、JSONには含めたいデータも作れます
  field :description do |book|
    "#{book.title} は #{book.author} 先生の名著です"
  end
  # 「reviews」という名前で、さっき作った「ReviewBlueprint」を使って表示してね、という命令
  association :reviews, blueprint: ReviewBlueprint
end