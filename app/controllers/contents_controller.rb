class ContentsController < ApplicationController

  def new
    @content = Content.new
  end

  def create
    Content.create(content_params)
  end

  def edit
    @content = Content.find(params[:id])
  end

  def show
    @content = Content.find(params[:id])
  end

  def update
    content = Content.find(params[:id])
    if content.user_id == current_user.id
      content.update(content_params)
    end
    redirect_to controller: 'top', action: 'index'
  end

  def destoroy
    content = Content.find(params[:id])
    if content.user_id == current_user.id
      tweet.destoroy
    end
    redirect_to controller: 'top', action: 'index'
  end

  private
  def content_params
    params.require(:content).permit(:title, :description, images_attributes: [:creative, :caption, :image_cache])
  end

end
