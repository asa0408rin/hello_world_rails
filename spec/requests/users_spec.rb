require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    subject { get(users_path) }
    # before { 3.times {create(:user)} }
    before { create_list(:user, 3) }

    it "ユーザーの一覧を取得できる" do
      # get users_path
      subject
      res = JSON.parse(response.body)
      expect(res.length).to eq 3
      expect(res[0].keys).to eq ["account", "name", "email"]
      expect(response).to have_http_status(200)
      # expect(response.status).to eq 200

    end
   end

   describe "GET /users/:id" do
     it "指定したユーザーのレコードを取得" do

     end
   end

   describe "POST /users" do
     it "ユーザーのレコードを作成" do

     end
   end

   describe "PATCH /users/:id" do
     it "指定したユーザーのレコード情報を更新する" do

     end
    end

    describe "DELETE /users/:id" do
      it "指定したユーザーのレコーダーを削除する" do

     end
   end

end
