class FavoriteMailer < ApplicationMailer
  default from: "bksung0708@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@stark-cliffs-25630.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@stark-cliffs-25630.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@stark-cliffs-25630.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@stark-cliffs-25630.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@stark-cliffs-25630.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@stark-cliffs-25630.herokuapp.com>"

    @post = post

    mail(to: post.user.email, subject: "You're following, #{post.title}")
  end
end
