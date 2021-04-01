class HomeController < ApplicationController
  def index
    @bookmark = Bookmark.new
    @bookmarks = Bookmark.all
    @categories = Category.all
    @kinds = Kind.all
  end
end
