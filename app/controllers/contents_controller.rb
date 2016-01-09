class ContentsController < ApplicationController

  def new
    @content = Content.new(content_params)
  end

  def create
    Content.create(content_params)
    redirect_to controller: 'top', action: 'index'
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
    params.permit(:title, :description, images_attributes: [:image])
  end

end
