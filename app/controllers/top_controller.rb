class TopController < ApplicationController

  def index
    # contentsテーブルから最新順に10コンテンツ取得
    @contents = Content.all.order('id DESC').limit(10)
    @thumbnails = Thumbnail.where(content_id: params[:id])
  end

end