require 'random_data'

def make_seeds(seed_topics,seed_posts,seed_comments)
# Create topics
  seed_topics.times do
    Topic.create!(
      name: RandomData.random_sentence,
      description: RandomData.random_paragraph
      )
    end

    topics = Topic.all

    # Create Posts
  seed_posts.times do
    Post.create!(
      topic: topics.sample,
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph
      )
    end

    posts = Post.all

    # Create Comments
    seed_comments.times do
      Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
        )
    end

    puts "Seed Finished"
    puts "#{Topic.count} posts created"
    puts "#{Post.count} posts created"
    puts "#{Comment.count} comments created"
end

make_seeds(3,9,27)
