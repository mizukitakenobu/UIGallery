class ContentsController < ApplicationController

  def new
    @image = Content.new(content_params)
    3.times { @content.content_images.build }
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
    params.require(:content).permit(images_attributes: [:image])
  end

end
