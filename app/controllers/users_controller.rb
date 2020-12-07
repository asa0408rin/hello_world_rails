class UsersController < ApplicationController
before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def create
    #インスタンスをmodelから作成する
    @user = User.new(user_params)

    #インスタンスをDBに保存する
    @user.save!

    #jsonとして値を返す
    render :show
  end

  def update
    #さがしてきたレコードに対して変更を行う
    @user.update!(user_params)
    #jsonとして値を返す
    render :show
  end

  def destroy
    #探してきたレコードを削除する
    @user.destroy!
    #jsonとして値を返す
    render :show
  end
  private

  def user_params
    params.require(:user).permit(:name, :account, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
