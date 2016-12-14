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

end
