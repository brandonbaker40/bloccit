class FavoriteMailer < ApplicationMailer
  default from: "brbaker400@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@still-bayou-19051>"
    headers["In-Reply-To"] = "<post/#{post.id}@still-bayou-19051>"
    headers["References"] = "<post/#{post.id}@still-bayou-19051>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

 def new_post(post)
   headers["Message-ID"] = "<posts/#{post.id}@still-bayou-19051>"
   headers["In-Reply-To"] = "<posts/#{post.id}@still-bayou-19051>"
   headers["References"] = "<post/#{post.id}@still-bayou-19051>"

   @post = post
   mail(to: post.user.email, subject: "You're following, #{post.title}!")
  end
end
