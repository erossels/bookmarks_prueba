class HomeController < ApplicationController
  def index
    @bookmark = Bookmark.new
    @bookmarks = Bookmark.all
    @categories = Category.all
    @kinds = Kind.all
    @bookmarks_grouped_by_kind = Bookmark.joins(:kind).group("kinds.name").count
  
  end

  def retrieve
    @bookmarks = Bookmark.where("created_at BETWEEN ? AND ?", Date.parse(params[:fecha1]), Date.parse(params[:fecha2]).tomorrow).order("updated_at DESC").page(params[:page])
    all_content = []
    @tweets.each do |tweet|
      tweets_hash = {
        id: tweet.id,
        content: tweet.content,
        user_id: tweet.user.id,
        like_count: tweet.likes.count,
        retweets_count: tweet.retweets.count,
        retweeted_from: retweet_from(tweet)
      }
      all_content.append(tweets_hash)
    end
    render json: all_content
  end
end
