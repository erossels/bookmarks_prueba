class HomeController < ApplicationController
  def index
    @bookmark = Bookmark.new
    @bookmarks = Bookmark.all
    @categories = Category.all
    @kinds = Kind.all
    @bookmarks_grouped_by_kind = Bookmark.joins(:kind).group("kinds.name").count
  
  end

  def retrieve
    @parent = Category.find(params[:id])
    render json: @parent.retrieval
  end

end
