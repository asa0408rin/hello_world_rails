require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      get users_path
      expect(response).to have_http_status(200)
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
