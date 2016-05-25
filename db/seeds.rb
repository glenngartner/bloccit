# require 'random_data'
#
# # Create Posts
# 50.times do
#   Post.create!(
#     title:  RandomData.random_sentence,
#     body:   RandomData.random_paragraph
#   )
# end
# posts = Post.all
#
# # Create Comments
# 100.times do
#   Comment.create!(
#     post: posts.sample,
#     body: RandomData.random_paragraph
#   )
# end
#
# puts "Seed finished"
# puts "#{Post.count} posts created"
# puts "#{Comment.count} comments created"

# Search for a post with this title. If found, don't duplicate, if not, create
Post.find_or_create_by(title: "Unique Title", body: "Incredibly unique body")

# Collect all posts in an array
posts = Post.all
# Serach the array of existing posts for comments matching this.
# If found, don't duplicate. If not found, create.
posts.each do |post|
  post.comments.find_or_create_by(body:"Unique comment")
end
