class AccountsController < ApplicationController

  def index
    @users = current_user #ログイン中のデータを全部取得するメソッドを@users変数に代入している
  end

  def edit
    @user = User.find(params[:id]) #Usersテーブルからparamsで任意のidを取得して、findで取得するメソッドを@user変数に代入している
  end

  def update
    @user = User.find(params[:id]) #上記と同じようにidを取得したものを@user変数に代入。
    #上記で定義した@user変数にupdateメソッドを実行。user属性の指定したデータしか受け付けないようにする
    if @user.update(params.require(:user).permit(:name, :image, :introduction))
      flash[:notice] = "アカウント情報を変更しました。"
      redirect_to :top_page #updateに成功すればトップに戻るように指定
    else
      render "edit" #失敗すれば、元の画面に戻るように指定
    end
  end
end
