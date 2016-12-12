class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    tag = Tag.find(params[:id])

    Tag.destroy(tag)

    redirect_to tag_path(@tags)
  end
end
