require 'random_data'

# Create Posts

3.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

posts = Post.all


5.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by(
  title: "My Unique Title",
  body: "My unique body"
)

myPost = Post.find_or_create_by(
  title: "My Unique Title",
  body: "My unique body"
)

Comment.find_or_create_by(
  post: myPost,
  body: "A unique comment"
)



puts "Seed Finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
