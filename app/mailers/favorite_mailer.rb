class FavoriteMailer < ApplicationMailer

  default  from: "jgcdeveloper@gmail.com"

  def new_comment(user, post, comment)

     headers["Message-ID"] = "<comments/#{comment.id}@Bloccit>"
     headers["In-Reply-To"] = "<post/#{post.id}@Bloccit>"
     headers["References"] = "<post/#{post.id}@Bloccit>"

     @user = user
     @post = post
     @comment = comment

     mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(post)

    headers["Message-ID"] = "<posts/#{post.id}@Bloccit>"
    headers["In-Reply-To"] = "<posts/#{post.id}@Bloccit>"
    headers["References"] = "<posts/#{post.id}@Bloccit>"

    @post = post
    @user = post.user.email
    mail(to: @user, subject: "You are set up to follow your post: #{post.title}")
  end

end
