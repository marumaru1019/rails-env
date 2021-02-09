require 'rails_helper'

describe User do # Postモデルについて
  describe '#create' do # createアクションについて
    it "contentがない場合は登録できないこと" do # テストの確認内容を記述
      post = User.new(name: nil) # Postモデルのインスタンス（データ）を作成
      expect(post).to be_valid
    end
  end
end