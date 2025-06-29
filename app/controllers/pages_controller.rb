class PagesController < ApplicationController
  def home
    @user = User.new
  end

  def explore
    # Later, this logic can be updated for "kinky & popular".
    # For now, we'll just grab a sample of all posts.
    @explore_posts = Post.all.sample(24)
  end
end
