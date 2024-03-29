class RegistersController < ApplicationController
  before_action :authenticate_user!, except: [:search, :show]

  def index
    @registers = current_user.registers.all #ログイン中のユーザーが登録した部屋を全部取得
  end

  def new
    @register = Register.new #Registerモデルにnewメソッドで新しいインスタンスを作って、それを@register変数に代入している
  end

  def create
    #上記のnewメソッドから送られてきたデータをparamsで取得して、@register変数に代入
    @register = Register.new(params.require(:register).permit(:avatar_path, :name, :introduction, :price, :address, :image))
    @register.image = current_user.image
    @register.user_id = current_user.id #user_idの情報はフォームから送られてないので、current_userメソッドを使って、(ログインしている自分のid)を@registerに代入
    if @register.save #送られてきたデータを保存する
      redirect_to :registers
    else
      render "new"
    end
  end

  def search #検索されたデータを表示する処理をするためのアクション
    @registers = @q.result #検索結果を表示する
    @count = @registers.count
  end

  def show
    @register = Register.find(params[:id])
    @reserve = Reserve.new
  end

end
