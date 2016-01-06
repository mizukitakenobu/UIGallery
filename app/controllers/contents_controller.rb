class ContentsController < ApplicationController

  def new
  end

  def create
    Content.create(content_params)
    @image = ContentImage.new
    10.times { @content.content_images.build }
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
    params.permit(:title, :image, :description)
  end

end
