class ContentsController < ApplicationController

  def new
    @content = Content.new(content_params)
  end

  def create
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
