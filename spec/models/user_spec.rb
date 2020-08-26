require 'rails_helper'

RSpec.describe User, type: :model do
  describe '新規登録' do
    it "ニックネームが必須であること" do
    end
    it "メールアドレスが必須であること" do
    end
    it "メールアドレスが一意性であること" do
    end
    it "メールアドレスが@を含む必要があること" do
    end
    it "パスワードが必要であること" do
    end
    it "パスワードは６文字以上であること" do
    end
    it "パスワードは半角英数字混合であること" do
    end
    it "パスワードは確認用も含めて２回入力すること" do
    end
    it "ユーザー本名が、名字と名前がそれぞれ必須であること" do
    end
    it "ユーザー本名は全角（漢字・ひらがな・カタカナ）で入力させること" do
    end
    it "ユーザー本名のフリガナが、名字と名前でそれぞれ必須であること" do
    end
    it "ユーザー本名のフリガナは全角（カタカナ）で入力させること" do
    end
    it "生年月日が必須であること" do
    end
    
  end
end
