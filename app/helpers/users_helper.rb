module UsersHelper

  def return_posts_favored_by_user(user)
    favored_posts = []

    favorites = Favorite.where(user_id: user.id)

    favorites.each do |f|
      post = Post.find(f.post_id)
      favored_posts.push(post)
    end

    favored_posts

  end

  def find_gravitar_from_post_author(post,size)
    author = User.find(post.user_id)
    email = author.email
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end

end
