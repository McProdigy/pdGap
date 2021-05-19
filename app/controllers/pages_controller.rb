class PagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if logged_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
  end

  def contact
    @title = 'Contact'
  end

  def about
    @title = 'About'  
  end
  def help
  end
end
