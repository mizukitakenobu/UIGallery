class TopController < ApplicationController

  def index
    # contentsテーブルから最新順に10コンテンツ取得
    @contents = Content.all.order('id DESC').page(params[:page]).limit(10)
  end

end