require 'random_data'

def make_seeds(seed_topics,seed_users,seed_posts,seed_comments)

  # Create topics
  seed_topics.times do
    Topic.create!(
      name: RandomData.random_sentence,
      description: RandomData.random_paragraph
    )
  end

  topics = Topic.all

  #Create users
  seed_users.times do
    User.create!(
      name: RandomData.random_name,
      email: RandomData.random_email,
      password: RandomData.random_sentence
    )
  end

  users = User.all

  # Create Posts
  seed_posts.times do
    Post.create!(
      user: users.sample,
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

  # Non Random First User Seed
  user = User.first

  user.update_attributes!(
    name: "Jason Clegg (Dev)",
    email: "jgcdeveloper@gmail.com",
    password: "123456"
  )

 # Create an admin user
  admin = User.create!(
    name:     'Admin User',
    email:    'admin@example.com',
    password: '123456',
    role:     'admin'
  )

 # Create a member
  member = User.create!(
    name:     'Member User',
    email:    'member@example.com',
    password: 'testing'
  )

  puts "Seed Finished"
  puts "#{Topic.count} topics created"
  puts "#{User.count} users created"
  puts "#{Post.count} posts created"
  puts "#{Comment.count} comments created"

end

make_seeds(3,6,36,216)
