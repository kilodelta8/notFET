class GroupsController < ApplicationController
  def index
    # Placeholder: Fetch all groups the user has joined. For now, we'll imagine they joined all of them.
    @user_groups = Group.all

    # Placeholder: Fetch all posts from those groups. For now, just grab the 10 most recent posts.
    @group_posts = Post.order(created_at: :desc).limit(10)
  end
end
