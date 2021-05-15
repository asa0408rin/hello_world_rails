require 'rails_helper'

RSpec.describe User, type: :model do
 context "account を指定している時" do
   it "ユーザーが作られる" do
     user = FactoryBot.build(:user)
     expect(user).to be_valid   # user.valid? がtrueになればパスする
    end
 end

 context "account を指定していない時" do
   it "ユーザー作成に失敗する(エラーする)" do
     user = FactoryBot.build(:user ,account: nil)
     #  user = User.new(name:"foo", email:"foo@example.com")
     expect(user).to be_invalid
     # エラーしてaccountがblankになっていることのテスト
     expect(user.errors.details[:account][0][:error]).to eq :blank
   end
 end

 #一つ目のテストが内容を含んでいるためナシ
 # context "まだ同じ名前の　account　が存在しない時" do
  #   it "ユーザーが作られる" do
  #     user = User.new(name:"foo", account:"foo", email:"foo@example.com")
  #     #  expect(user.valid?).to eq true
  #     expect(user).to be_valid # user.valid? がtrueになればパスする
  #   end
  # end

 context "すでに同じ名前の accountが存在している時" do
   it "ユーザー作成に失敗する" do
     FactoryBot.create(:user, account: "neko")
     user = FactoryBot.build(:user, account: "neko")
     expect(user).to be_invalid
     expect(user.errors.details[:account][0][:error]).to eq :taken
   end
 end

 fcontext "nameを指定していない時" do
   it "ユーザー作成に失敗する" do
     user = FactoryBot.build(:user, name: nil)
     expect(user).to be_invalid
     expect(user.errors.details[:name][0][:error]).to eq :blank
   end
 end

end
