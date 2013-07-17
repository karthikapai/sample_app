class StaticPagesController < ApplicationController
<<<<<<< HEAD

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
=======
  def home
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
  end

  def help
  end

  def about
  end

  def contact
  end
end
