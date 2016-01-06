class ContentsController < ApplicationController

  def new
    @content = Content.new(content_params)
  end

  def create
    Content.create(content_params)
    redirect_to controller: 'top', action: 'index'
  end

  def edit
  end

  def show
  end

  def update
  end

  def destoroy
  end

  private
  def content_params
    params.permit(:title, :description, images_attributes: [:image])
  end

end
