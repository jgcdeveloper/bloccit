class Post < ActiveRecord::Base
  has_many :comments

  def self.getAllPosts
    Post.all
  end

end
