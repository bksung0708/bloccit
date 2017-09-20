module UsersHelper
  def user_has_any_posts_or_comments?
    flash[:notice] = "#{@user.name} has #{@user.posts.count} posts and #{@user.comments.count} comments."
  end
end
