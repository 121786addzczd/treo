class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def new
    @card = Card.new
    @list = List.find(params[:list_id])
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def show
  end

  def edit
    @lists = List.where(user: current_user)

    # Listモデルからuser_idがcurretn_user.idと一致
    # するレコードの情報を取得するというコードになる。
    # (オブジェクトでもwhereの検索条件に指定できるので、idは省略できる。）
    # つまりログインしているユーザーが作成したリストの情報を取得している。
  end

  def update
    if @card.update(card_params)
      redirect_to :root
    else
      render action: :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to :root
  end

  private
    def card_params
      params.require(:card).permit(:title, :memo, :list_id)
    end

    def set_card
      @card = Card.find(params[:id])
    end
end
